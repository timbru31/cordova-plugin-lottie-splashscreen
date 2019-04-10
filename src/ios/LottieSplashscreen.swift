import Lottie

@objc(LottieSplashScreen) class LottieSplashScreen: CDVPlugin {
    var animationView: AnimationView?
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
        animationViewContainer?.layer.zPosition = 1

        let backgroundColor = commandDelegate?.settings["LottieBackgroundColor".lowercased()] as? String
        animationViewContainer?.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
        animationViewContainer?.backgroundColor = UIColor(hex: backgroundColor)
    }

    private func createAnimationView(location: String? = nil, remote: Bool? = nil, width: Int? = nil, height: Int? = nil) {
        let useRemote = remote != nil ? remote! : (commandDelegate?.settings["LottieRemoteEnabled".lowercased()] as? NSString ?? "false").boolValue
        var animationLocation = location != nil ? location! : commandDelegate?.settings["LottieAnimationLocation".lowercased()] as? String ?? ""
        if useRemote {
            animationView = AnimationView(url: URL(string: animationLocation)!, closure: { (error) in
                print(error?.localizedDescription ?? "Error loading URL")
            })
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

        if ((commandDelegate?.settings["LottieFullScreen".lowercased()] as? NSString ?? "false").boolValue) {
            var autoresizingMask: UIView.AutoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
            let portrait = UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portrait || UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portraitUpsideDown
            autoresizingMask.insert(portrait ?.flexibleWidth : .flexibleHeight)

            animationView?.autoresizingMask = autoresizingMask
            animationWidth = fullScreenzSize.width
            animationHeight = fullScreenzSize.height
        } else {
            animationView?.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]

            if ((commandDelegate?.settings["LottieRelativeSize".lowercased()] as? NSString ?? "false").boolValue) {
                animationWidth = fullScreenzSize.width * (width != nil ? CGFloat(width!) : CGFloat(Float(commandDelegate?.settings["LottieWidth".lowercased()] as? String ?? "0.2")!))
                animationHeight = fullScreenzSize.height * (height != nil ? CGFloat(height!) : CGFloat(Float(commandDelegate?.settings["LottieHeight".lowercased()] as? String ?? "0.2")!))
            } else {
                animationWidth = CGFloat(width != nil ? width! : Int(commandDelegate?.settings["LottieWidth".lowercased()] as? String ?? "200")!)
                animationHeight = CGFloat(height != nil ? height! : Int(commandDelegate?.settings["LottieHeight".lowercased()] as? String ?? "200")!)
            }
        }
        animationView?.frame = CGRect(x: 0, y: 0, width: animationWidth, height: animationHeight)
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }

    private func createObservers() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.pageDidLoad),
            name: NSNotification.Name.CDVPageDidLoad,
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.deviceOrientationChanged),
            name: UIDevice.orientationDidChangeNotification,
            object: nil)
    }

    @objc private func deviceOrientationChanged() {
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }
}
