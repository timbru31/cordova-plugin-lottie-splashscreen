import { exec } from 'cordova';

class LottieSplashScreen {
    static hide() {
        exec(null as any, null as any, 'LottieSplashScreen', 'hide', []);
    }

    static show(location?: string, remote?: boolean, width?: number, height?: number) {
        exec(null as any, null as any, 'LottieSplashScreen', 'show', [location, remote, width, height]);
    }
}

export = LottieSplashScreen;
