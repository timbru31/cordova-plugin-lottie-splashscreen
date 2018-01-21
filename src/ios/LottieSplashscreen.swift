import Lottie

@objc(LottieSplashscreen) class LottieSplashscreen: CDVPlugin {
    var animationView: LOTAnimationView?
    var animationViewContainer: UIView?
    var visible = false

    override func pluginInitialize() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.pageDidLoad),
            name: NSNotification.Name.CDVPageDidLoad,
            object: nil)
        createView()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.resumePlaying),
            name: NSNotification.Name.UIApplicationWillEnterForeground,
            object: nil)
    }

    @objc func resumePlaying() {
        animationView?.play()
    }

    @objc(hide:)
    func hide(command: CDVInvokedUrlCommand) {
        destroyView()
    }

    @objc(show:)
    func show(command: CDVInvokedUrlCommand) {
        createView()
    }

    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

    func pageDidLoad() {
        let autoHide = commandDelegate?.settings["AutoHideSplashScreen".lowercased()] as? NSString ?? "false"
        if autoHide.boolValue {
            destroyView()
        }
    }

    func destroyView(_ : UITapGestureRecognizer? = nil) {
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

    func createView() {
        if !visible {

            createAnimationView()
            let parentView = self.viewController.view
            parentView?.isUserInteractionEnabled = false

            animationViewContainer = UIView(frame: UIScreen.main.bounds)

            let backgroundColor = commandDelegate?.settings["LottieBackgroundColor".lowercased()] as? String
            animationViewContainer?.center = CGPoint(x: UIScreen.main.bounds.midX, y:UIScreen.main.bounds.midY)
//            animationViewContainer?.autoresizingMask = [.flexibleTopMargin , .flexibleBottomMargin , .flexibleLeftMargin , .flexibleRightMargin]
//            animationViewContainer?.translatesAutoresizingMaskIntoConstraints = false
            animationViewContainer?.backgroundColor = UIColor(hex: backgroundColor)
            animationViewContainer?.autoresizingMask = [.flexibleWidth, .flexibleHeight]

            // animationView.frame = (parentView?.bounds)!
            // let center = [parent convertPoint:animationViewContainer.center fromView:animationViewContainer.superview];
            // animationView.center = center

            animationView?.frame = CGRect(origin: (animationViewContainer?.center)!, size: CGSize(width: 200, height: 300))
//            animationView?.autoresizingMask = [.flexibleTopMargin , .flexibleBottomMargin , .flexibleLeftMargin , .flexibleRightMargin]
//            animationView?.translatesAutoresizingMaskIntoConstraints = true
            animationView?.centerXAnchor.constraint(equalTo: (animationViewContainer?.centerXAnchor)!)
            animationView?.centerYAnchor.constraint(equalTo: (animationViewContainer?.centerYAnchor)!)
            animationView?.center = (animationViewContainer?.center)!
            animationView?.loopAnimation = true
//            animationView?.layer.anchorPoint = (animationView?.center)!
            print(animationView?.layer.anchorPoint)
            animationView?.contentMode = .scaleAspectFill
            animationView?.animationSpeed = 1

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

    private func createAnimationView() {
        let useRemote = commandDelegate?.settings["LottieRemoteEnabled".lowercased()] as? NSString ?? "false"
        var animationLocation = commandDelegate?.settings["LottieAnimationLocation".lowercased()] as? String ?? ""
        if useRemote.boolValue {
            animationView = LOTAnimationView(contentsOf: URL(string: animationLocation)!)
        } else {
            animationLocation = Bundle.main.bundleURL.appendingPathComponent(animationLocation).path
            animationView = LOTAnimationView(filePath: animationLocation)
        }
    }
}
