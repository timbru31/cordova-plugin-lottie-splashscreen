import Lottie

@objc(LottieSplashScreen) class LottieSplashScreen: CDVPlugin {
    var animationView: AnimationView?
    var animationViewContainer: UIView?
    var visible = false
    var animationEnded = false
    var callbackId: String?

    override func pluginInitialize() {
        createObservers()
        createView()
    }

    @objc(hide:)
    func hide(command: CDVInvokedUrlCommand) {
        callbackId = command.callbackId
        destroyView()
    }

    @objc(show:)
    func show(command: CDVInvokedUrlCommand) {
        let location = command.arguments.count > 0 ? command.argument(at: 0) : nil
        let remote = command.arguments.count > 1 ? command.argument(at: 1) : nil
        let width = command.arguments.count > 2 ? command.argument(at: 2) : nil
        let height = command.arguments.count > 3 ? command.argument(at: 3) : nil
        createView(location: location as? String, remote: remote as? Bool, width: width as? Int, height: height as? Int, callbackId: command.callbackId)
    }

    @objc(initialAnimationEnded:)
    func initialAnimationEnded(command: CDVInvokedUrlCommand) {
        let result = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: animationEnded)
        commandDelegate.send(result, callbackId: command.callbackId)
    }

    @objc func pageDidLoad() {
        let autoHide = commandDelegate?.settings["LottieAutoHideSplashScreen".lowercased()] as? NSString ?? "false"
        if autoHide.boolValue {
            destroyView()
        }
    }

    private func delayWithSeconds(_ seconds: Double, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

    @objc private func destroyView(_: UITapGestureRecognizer? = nil) {
        if visible {
            let fadeOutDuation = Double(commandDelegate?.settings["LottieFadeOutDuration".lowercased()] as? String ?? "0")!
            if fadeOutDuation > 0 {
                UIView.animate(withDuration: fadeOutDuation, animations: {
                    self.animationView?.alpha = 0.0
                }, completion: { _ in
                    self.removeView()
                })
            } else {
                removeView()
            }
        }
    }

    private func removeView() {
        let parentView = viewController.view
        parentView?.isUserInteractionEnabled = true

        animationView?.removeFromSuperview()
        animationViewContainer?.removeFromSuperview()

        animationViewContainer = nil
        animationView = nil
        visible = false

        sendCallback()
    }

    private func createView(location: String? = nil, remote: Bool? = nil, width: Int? = nil, height: Int? = nil, callbackId: String? = nil) {
        if !visible {
            self.callbackId = callbackId
            let parentView = viewController.view

            createAnimationViewContainer()
            do {
                try createAnimationView(location: location, remote: remote, width: width, height: height)
            } catch {
                processInvalidURLError(error: error)
            }

            animationViewContainer?.addSubview(animationView!)
            parentView?.addSubview(animationViewContainer!)

            let cancelOnTap = commandDelegate?.settings["LottieCancelOnTap".lowercased()] as? NSString ?? "false"
            if cancelOnTap.boolValue {
                let gesture = UITapGestureRecognizer(target: self, action: #selector(destroyView(_:)))
                animationViewContainer?.addGestureRecognizer(gesture)
            }

            let hideTimeout = Double(commandDelegate?.settings["LottieHideTimeout".lowercased()] as? String ?? "0")!
            if hideTimeout > 0 {
                delayWithSeconds(hideTimeout) {
                    self.destroyView()
                }
            }

            playAnimation()
            visible = true
        } else if callbackId != nil {
            let result = CDVPluginResult.init(status: CDVCommandStatus_ERROR, messageAs: LottieSplashScreenError.animationAlreadyPlaying.localizedDescription)
            commandDelegate.send(result, callbackId: callbackId)
        }
    }

    private func createAnimationViewContainer() {
        let parentView = viewController.view
        parentView?.isUserInteractionEnabled = false

        animationViewContainer = UIView(frame: (parentView?.bounds)!)
        animationViewContainer?.layer.zPosition = 1

        let backgroundColor = commandDelegate?.settings["LottieBackgroundColor".lowercased()] as? String
        animationViewContainer?.autoresizingMask = [
            .flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin
        ]
        animationViewContainer?.backgroundColor = UIColor(hex: backgroundColor)
    }

    private func createAnimationView(location: String? = nil, remote: Bool? = nil, width: Int? = nil, height: Int? = nil) throws {
        var animationLocation: String
        if location != nil {
            animationLocation = location!
        } else {
            animationLocation = commandDelegate?.settings["LottieAnimationLocation".lowercased()] as? String ?? ""
        }

        if isRemote(remote: remote) {
            let cacheDisabled = (commandDelegate?.settings["LottieCacheDisabled".lowercased()] as? NSString ?? "false").boolValue
            guard let url = URL(string: animationLocation) else { throw LottieSplashScreenError.invalidURL }
            animationView = AnimationView(url: url, closure: { error in
                if error == nil {
                    self.playAnimation()
                } else {
                    self.destroyView()
                    self.processInvalidURLError(error: error!)
                }
            }, animationCache: cacheDisabled ? nil : LRUAnimationCache.sharedCache)
        } else {
            animationLocation = Bundle.main.bundleURL.appendingPathComponent(animationLocation).path
            animationView = AnimationView(filePath: animationLocation)
        }

        calculateAnimationSize(width: width, height: height)

        let loop = (commandDelegate?.settings["LottieLoopAnimation".lowercased()] as? NSString ?? "false").boolValue
        if loop {
            animationView?.loopMode = .loop
        }
        animationView?.contentMode = .scaleAspectFit
        animationView?.animationSpeed = 1
        animationView?.autoresizesSubviews = true
        animationView?.backgroundBehavior = .pauseAndRestore
    }

    private func calculateAnimationSize(width: Int? = nil, height: Int? = nil) {
        let fullScreenzSize = UIScreen.main.bounds
        var animationWidth: CGFloat
        var animationHeight: CGFloat

        let useFullScreen = (commandDelegate?.settings["LottieFullScreen".lowercased()] as? NSString ?? "false").boolValue
        if useFullScreen {
            var autoresizingMask: UIView.AutoresizingMask = [
                .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin
            ]

            let portrait =
                UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portrait ||
                UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portraitUpsideDown
            autoresizingMask.insert(portrait ? .flexibleWidth : .flexibleHeight)

            animationView?.autoresizingMask = autoresizingMask
            animationWidth = fullScreenzSize.width
            animationHeight = fullScreenzSize.height
        } else {
            animationView?.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]

            let useRelativeSize = (commandDelegate?.settings["LottieRelativeSize".lowercased()] as? NSString ?? "false").boolValue
            if useRelativeSize {
                animationWidth = fullScreenzSize.width *
                    (width != nil ?
                        CGFloat(width!) :
                        CGFloat(Float(commandDelegate?.settings["LottieWidth".lowercased()] as? String ?? "0.2")!))
                animationHeight = fullScreenzSize.height *
                    (height != nil ?
                        CGFloat(height!) :
                        CGFloat(Float(commandDelegate?.settings["LottieHeight".lowercased()] as? String ?? "0.2")!))
            } else {
                animationWidth = CGFloat(width != nil ?
                    width! :
                    Int(commandDelegate?.settings["LottieWidth".lowercased()] as? String ?? "200")!)
                animationHeight = CGFloat(height != nil
                    ? height! :
                    Int(commandDelegate?.settings["LottieHeight".lowercased()] as? String ?? "200")!)
            }
        }
        animationView?.frame = CGRect(x: 0, y: 0, width: animationWidth, height: animationHeight)
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }

    private func playAnimation() {
        animationView?.play { finished in
            var event = "lottieAnimationEnd"
            if !finished {
                event =  "lottieAnimationCancel"
            }
            self.webViewEngine.evaluateJavaScript("document.dispatchEvent(new Event('\(event)'))", completionHandler: nil)
            let hideAfterAnimationDone = (self.commandDelegate?.settings["LottieHideAfterAnimationEnd".lowercased()] as? NSString ?? "false").boolValue
            if hideAfterAnimationDone {
                self.destroyView()
            }
            self.animationEnded = true
        }
        self.webViewEngine.evaluateJavaScript("document.dispatchEvent(new Event('lottieAnimationStart'))", completionHandler: nil)
        animationEnded = false
        sendCallback()
    }

    private func processInvalidURLError(error: Error) {
        if callbackId != nil {
            let result = CDVPluginResult.init(status: CDVCommandStatus_ERROR, messageAs: LottieSplashScreenError.invalidURL.localizedDescription)
            commandDelegate.send(result, callbackId: callbackId)
        } else {
            NSLog("Unexpected error: \(error.localizedDescription)")
        }
    }

    private func isRemote(remote: Bool?) -> Bool {
        var useRemote: Bool
        if remote != nil {
            useRemote = remote!
        } else {
            useRemote = (commandDelegate?.settings["LottieRemoteEnabled".lowercased()] as? NSString ?? "false").boolValue
        }
        return useRemote
    }

    private func sendCallback() {
        if callbackId != nil {
            let result = CDVPluginResult.init(status: CDVCommandStatus_OK)
            commandDelegate.send(result, callbackId: callbackId)
            callbackId = nil
        }
    }

    private func createObservers() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(pageDidLoad),
            name: NSNotification.Name.CDVPageDidLoad,
            object: nil
        )

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(deviceOrientationChanged),
            name: UIDevice.orientationDidChangeNotification,
            object: nil
        )
    }

    @objc private func deviceOrientationChanged() {
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }
}

enum LottieSplashScreenError: Error {
    case animationAlreadyPlaying
    case invalidURL
}

extension LottieSplashScreenError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .animationAlreadyPlaying:
            return NSLocalizedString("An animation is already playing, please first hide the current one", comment: "")
        case .invalidURL:
            return NSLocalizedString("The provided URL is invalid", comment: "")
        }
    }
}
