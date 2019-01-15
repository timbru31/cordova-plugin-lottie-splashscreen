import Lottie

@objc(LottieSplashScreen) class LottieSplashScreen: CDVPlugin {
    var animationView: LOTAnimationView?
    var animationViewContainer: UIView?
    var visible = false

    override func pluginInitialize() {
        createObservers()
        createView()
    }

    @objc(hide:)
    func hide(command: CDVInvokedUrlCommand) {
        destroyView()
    }

    @objc(show:)
    func show(command: CDVInvokedUrlCommand) {
        let location = command.arguments.count > 0 ? command.argument(at: 0) : nil
        let remote = command.arguments.count > 1 ? command.argument(at: 1) : nil
        let width = command.arguments.count > 2 ? command.argument(at: 2) : nil
        let height = command.arguments.count > 3 ? command.argument(at: 3) : nil
        createView(location: location as? String, remote: remote as? Bool, width: width as? Int, height: height as? Int)
    }

    @objc func pageDidLoad() {
        let autoHide = commandDelegate?.settings["AutoHideSplashScreen".lowercased()] as? NSString ?? "false"
        if autoHide.boolValue {
            destroyView()
        }
    }

    private func delayWithSeconds(_ seconds: Double, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

    @objc private func destroyView(_ : UITapGestureRecognizer? = nil) {
        if visible {
            let parentView = self.viewController.view
            parentView?.isUserInteractionEnabled = true

            animationView?.removeFromSuperview()
            animationViewContainer?.removeFromSuperview()

            animationViewContainer = nil
            animationView = nil
            visible = false
        }
    }

    private func createView(location: String? = nil, remote: Bool? = nil, width: Int? = nil, height: Int? = nil) {
        if !visible {
            let parentView = self.viewController.view

            createAnimationViewContainer()
            createAnimationView(location: location, remote: remote, width: width, height: height)

            animationViewContainer?.addSubview(animationView!)
            parentView?.addSubview(animationViewContainer!)
            animationView?.play()

            let cancelOnTap = commandDelegate?.settings["LottieCancelOnTap".lowercased()] as? NSString ?? "false"
            if cancelOnTap.boolValue {
                let gesture = UITapGestureRecognizer(target: self, action: #selector (self.destroyView(_:)))
                animationViewContainer?.addGestureRecognizer(gesture)
            }

            let hideTimeout = Double(commandDelegate?.settings["LottieHideTimeout".lowercased()] as? String ?? "0")!
            if hideTimeout > 0 {
                delayWithSeconds(hideTimeout) {
                    self.destroyView()
                }
            }

            visible = true
        }
    }

    private func createAnimationViewContainer() {
        let parentView = self.viewController.view
        parentView?.isUserInteractionEnabled = false

        animationViewContainer = UIView(frame: (parentView?.bounds)!)

        let backgroundColor = commandDelegate?.settings["LottieBackgroundColor".lowercased()] as? String
        animationViewContainer?.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
        animationViewContainer?.backgroundColor = UIColor(hex: backgroundColor)
    }

    private func createAnimationView(location: String? = nil, remote: Bool? = nil, width: Int? = nil, height: Int? = nil) {
        let useRemote = remote != nil ? remote! : (commandDelegate?.settings["LottieRemoteEnabled".lowercased()] as? NSString ?? "false").boolValue
        var animationLocation = location != nil ? location! : commandDelegate?.settings["LottieAnimationLocation".lowercased()] as? String ?? ""
        if useRemote {
            animationView = LOTAnimationView(contentsOf: URL(string: animationLocation)!)
        } else {
            animationLocation = Bundle.main.bundleURL.appendingPathComponent(animationLocation).path
            animationView = LOTAnimationView(filePath: animationLocation)
        }
        let animationWidth = width != nil ? width! : Int(commandDelegate?.settings["LottieWidth".lowercased()] as? String ?? "200")!
        let animationHeight = height != nil ? height! : Int(commandDelegate?.settings["LottieHeight".lowercased()] as? String ?? "200")!
        animationView?.frame = CGRect(x: 0, y: 0, width: animationWidth, height: animationHeight)
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        animationView?.loopAnimation = (commandDelegate?.settings["LottieLoopAnimation".lowercased()] as? NSString ?? "false").boolValue
        animationView?.contentMode = .scaleAspectFill
        animationView?.animationSpeed = 1
    }

    private func createObservers() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.pageDidLoad),
            name: NSNotification.Name.CDVPageDidLoad,
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.resumePlaying),
            name: NSNotification.Name.UIApplicationWillEnterForeground,
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.deviceOrientationChanged),
            name: NSNotification.Name.UIDeviceOrientationDidChange,
            object: nil)
    }

    @objc private func resumePlaying() {
        animationView?.play()
    }

    @objc private func deviceOrientationChanged() {
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }
}
