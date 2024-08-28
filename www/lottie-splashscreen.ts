import { exec } from 'cordova';

type LottieEvent = 'lottieAnimationStart' | 'lottieAnimationEnd' | 'lottieAnimationCancel' | 'lottieAnimationRepeat';
const lottieEvents: LottieEvent[] = ['lottieAnimationStart', 'lottieAnimationEnd', 'lottieAnimationRepeat', 'lottieAnimationCancel'];

class LottieSplashScreen {
    static animationEnded: boolean;

    /**
     * Hides the active Lottie animation programmatically.
     * In case that no animation is playing, the Promise is rejected.
     */
    static hide() {
        this.animationEnded = true;
        return new Promise<string>((resolve, reject) => {
            exec(resolve, reject, 'LottieSplashScreen', 'hide', []);
        });
    }

    /**
     * Shows a Lottie animation programmatically. If an animation is already playing, the Promise will be rejected.
     * If a value is omitted, the configured default will be used instead.
     *
     * @param location - Optional. The animation that should be shown. Can be file path or URL.
     * @param remote - Optional. The boolean flag whether the animation should be loaded from remote.
     * @param width - Optional. The desired animation width.
     * @param height - Optional. The desired animation height.
     */
    static show(location?: string, remote?: boolean, width?: number, height?: number) {
        this.animationEnded = false;
        return new Promise<string>((resolve, reject) => {
            exec(resolve, reject, 'LottieSplashScreen', 'show', [location, remote, width, height]);
        });
    }

    /**
     * Listens to custom lottie events that are dispatched from the native side.
     *
     * @param event - The desired event to listen to. If a falsy value, such as null or "", is passed, the method will listen to all Lottie events.
     * @param callback - The callback function.
     */
    static on(event: LottieEvent | undefined, callback: (ev: Event) => void) {
        if (event) {
            document.addEventListener(event, callback);
        } else {
            for (const lottieEvent of lottieEvents) {
                document.addEventListener(lottieEvent, callback);
            }
        }
    }

    /**
     * Listens to a custom lottie event once and resolves the Promise once the event has been called.
     *
     * @param event - The desired event to listen to.
     */
    static once(event: LottieEvent) {
        return new Promise((resolve) => {
            document.addEventListener(event, resolve);
        });
    }
}

LottieSplashScreen.on('lottieAnimationStart', () => (LottieSplashScreen.animationEnded = false));
LottieSplashScreen.on('lottieAnimationCancel', () => (LottieSplashScreen.animationEnded = true));
LottieSplashScreen.on('lottieAnimationEnd', () => (LottieSplashScreen.animationEnded = true));

document.addEventListener('deviceready', () => {
    exec(
        (data: string | boolean) => {
            const payload = Boolean(data);
            if (!LottieSplashScreen.animationEnded && payload) {
                document.dispatchEvent(new Event('lottieAnimationEnd'));
            }
            LottieSplashScreen.animationEnded = payload;
        },
        // tslint:disable-next-line: no-console
        console.error,
        'LottieSplashScreen',
        'initialAnimationEnded',
        [],
    );
});

export = LottieSplashScreen;
