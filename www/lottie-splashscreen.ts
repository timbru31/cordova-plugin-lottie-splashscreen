import { exec } from 'cordova';

type LottieEvent = 'lottieAnimationStart' | 'lottieAnimationEnd' | 'lottieAnimationCancel' | 'lottieAnimationRepeat';
const lottieEvents: LottieEvent[] = ['lottieAnimationStart', 'lottieAnimationEnd', 'lottieAnimationRepeat', 'lottieAnimationCancel'];

class LottieSplashScreen {
    /**
     * Hides the active Lottie animation programmatically.
     * In case that no animation is playing, the Promise is rejected.
     */
    static hide() {
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
    static on(event: LottieEvent, callback: (ev: Event) => void) {
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
        return new Promise((resolve, _) => {
            document.addEventListener(event, resolve);
        });
    }
}

export = LottieSplashScreen;
