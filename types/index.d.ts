type LottieEvent = 'lottieAnimationStart' | 'lottieAnimationEnd' | 'lottieAnimationCancel' | 'lottieAnimationRepeat';

interface LottieSplashScreen {
    readonly animationEnded: boolean;
    hide(): Promise<string>;
    show(location?: string, remote?: boolean, width?: number, height?: number): Promise<string>;
    on(event: LottieEvent, callback: (ev: Event) => void): void;
    once(event: LottieEvent): Promise<unknown>;
}

declare const lottie: {
    splashscreen: LottieSplashScreen;
};
