import Lottie

@objc(LottieSplashscreen) class LottieSplashscreen: CDVPlugin {
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
        createView()
    }

    func pageDidLoad() {
        let autoHide = commandDelegate?.settings["AutoHideSplashScreen".lowercased()] as? NSString ?? "false"
        if autoHide.boolValue {
            destroyView()
        }
    }

    private func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
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

    private func createView() {
        if !visible {
            let parentView = self.viewController.view

            createAnimationViewContainer()
            createAnimationView()

            animationViewContainer?.addSubview(animationView!)
            parentView?.addSubview(animationViewContainer!)
            animationView?.play()

            let cancelOnTap = commandDelegate?.settings["LottieCancelOnTap".lowercased()] as? NSString ?? "false"
            if cancelOnTap.boolValue {
                let gesture = UITapGestureRecognizer(target: self, action: #selector (self.destroyView(_:)))
                animationViewContainer?.addGestureRecognizer(gesture)
            }

            let hideTimeout = commandDelegate?.settings["LottieHideTimeout".lowercased()] as? Double ?? 0
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

    private func createAnimationView() {
        let useRemote = commandDelegate?.settings["LottieRemoteEnabled".lowercased()] as? NSString ?? "false"
        var animationLocation = commandDelegate?.settings["LottieAnimationLocation".lowercased()] as? String ?? ""
        if useRemote.boolValue {
            animationView = LOTAnimationView(contentsOf: URL(string: animationLocation)!)
        } else {
            animationLocation = Bundle.main.bundleURL.appendingPathComponent(animationLocation).path
            animationView = LOTAnimationView(filePath: animationLocation)
        }
        animationView?.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX , y :UIScreen.main.bounds.midY)
        animationView?.loopAnimation = true
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
        animationView?.center = CGPoint(x: UIScreen.main.bounds.midX , y :UIScreen.main.bounds.midY)
    }
}

