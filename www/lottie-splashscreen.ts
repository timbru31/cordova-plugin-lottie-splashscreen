import { exec } from 'cordova';

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
}

export = LottieSplashScreen;
