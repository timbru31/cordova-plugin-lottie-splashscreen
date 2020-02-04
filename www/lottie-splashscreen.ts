import { exec } from 'cordova';

type LottieEvents = 'lottieAnimationStart' | 'lottieAnimationEnd' | 'lottieAnimationCancel' | 'lottieAnimationRepeat';

class LottieSplashScreen {
    static hide() {
        return new Promise<string>((resolve, reject) => {
            exec(resolve, reject, 'LottieSplashScreen', 'hide', []);
        });
    }

    static show(location?: string, remote?: boolean, width?: number, height?: number) {
        return new Promise<string>((resolve, reject) => {
            exec(resolve, reject, 'LottieSplashScreen', 'show', [location, remote, width, height]);
        });
    }

    static on(event: LottieEvents) {
        return new Promise((resolve, _) => {
            document.addEventListener(event, resolve);
        });
    }
}

export = LottieSplashScreen;
