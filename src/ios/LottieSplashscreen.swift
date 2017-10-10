import Lottie

@objc(LottieSplashscreen) class LottieSplashscreen : CDVPlugin {
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
        if (autoHide.boolValue) {
            destroyView()
        }
    }


    func destroyView() {
        if (visible) {
            let parentView = self.viewController.view;
            parentView?.isUserInteractionEnabled = true

            animationView?.removeFromSuperview()
            animationViewContainer?.removeFromSuperview()

            animationViewContainer = nil
            animationView = nil
            visible = false
        }
    }

    func createView() {
        if (!visible) {
            let remoteURL = "https://www.lottiefiles.com/storage/datafiles/7HMs29Q0NhBUKCp/data.json"
            animationView = LOTAnimationView(contentsOf: URL(string: remoteURL)!)
            let parentView = self.viewController.view;
            parentView?.isUserInteractionEnabled = false

            animationViewContainer = UIView()
            animationViewContainer?.frame = (parentView?.bounds)!
            animationViewContainer?.center = (parentView?.center)!
            animationViewContainer?.backgroundColor = UIColor.white
            animationViewContainer?.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    //        animationView.frame = (parentView?.bounds)!
    //        let center = [parent convertPoint:animationViewContainer.center fromView:animationViewContainer.superview];
    //        animationView.center = center

            animationView?.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView?.center = CGPoint(x: (animationViewContainer?.bounds.midX)!, y: (animationViewContainer?.bounds.midY)!)
            animationView?.loopAnimation = true
            animationView?.contentMode = .scaleAspectFill
            animationView?.animationSpeed = 1

            animationViewContainer?.addSubview(animationView!)
            parentView?.addSubview(animationViewContainer!)
            animationView?.play()

            visible = true
        }
    }
}
