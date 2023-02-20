# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [0.10.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.6...v0.10.0) (2023-02-20)

### ⚠ BREAKING CHANGES

-   **deps:** lottie-ios and therefore this plugin requires now iOS 11+

### Features

-   adds support for light and dark mode background colors. closes [#343](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/343) ([9ef0a33](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9ef0a3300b78bbbba376f3169ecf13da48190e77))

### Bug Fixes

-   Allows events like lottieAnimationStart to fire when used in a Capacitor project ([#438](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/438)) ([b537de0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b537de078de7274a1d756cf68aafb8e597683d9a))
-   compile and CI ([9e0a4cc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9e0a4cc8b7ebac8cc973a665eed2cc768188be43))
-   Resolves crash in Android (webView.engine is null) with Capacitor ([#436](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/436)) ([1056b63](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1056b632f88e66874003a950e9a5636131aac9dd))
-   use cordova for Ionic CLI smoketest ([fc3ef77](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fc3ef777508605314c6031dc42ec1437237eb189))

### Code Refactoring

-   replace TSLint with ESLint ([d63b341](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d63b341224274aa6551cd42e9fc71d470afb41b9))

### Build System

-   add missing deps ([05fdb80](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/05fdb8012ddfab35f695fb1dbf9eb6d3c5e18139))
-   adds .node-version file ([5e54608](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5e54608f985eeb1d9924353c45ed29e7649de487))
-   **ci:** add more Node.js versions to test matrix ([ca8816e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ca8816ef8f53833d8efbe2d7c5d612d056412f7e))
-   **ci:** adds Xcode 13 to matrix ([8d87940](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8d87940f6a97658c4d0da99c8229d7e230cb1649))
-   **ci:** disable husky in CI ([2316d39](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2316d39683cc713b23e1fc2e76347d75cad512b1))
-   **ci:** do not fail on husky install ([f168be3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f168be36ff791faf8432e70dd70b68fab514df03))
-   **ci:** fix Ionic smoke test ([b91827f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b91827fdbb65880714c2a9616c190f638e84990e))
-   **ci:** fix Ionic smoke test ([#392](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/392)) ([fa40793](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fa40793071eaec954eca91989acb5fc245bafdcb))
-   **ci:** fix smoke test ([d901886](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d901886ea3ea87d264b4c2cf536906eb9d3c22d7))
-   **ci:** remove plugin removal ([#402](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/402)) ([25af24a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/25af24a7a59b99ba1aa592c80955d65b9c7e593e))
-   **ci:** switch to temurin ([0f2059e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0f2059e366ded59e879fccc023c3050c0ce5d8d4))
-   **ci:** switch to Xcode 13 and 14 ([#504](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/504)) ([a8c064a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a8c064a4d0aa4c3f408b01ad2c1dfc87eeb78a30))
-   **ci:** update Kotlin version ([d550d42](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d550d42432a9e4987c3d13f084640142b932d7ae))
-   **ci:** update Node.js and JDK versions ([#459](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/459)) ([d1b8bdf](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d1b8bdfe44b29762413d9e2585fb9e5a99e871ea))
-   **ci:** use Node.js 16, rebuilt lockfile ([fd54502](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fd545027fbeb35e77043f9a1c9d7d80c8427c68f))
-   **deps-dev:** bump @commitlint/cli from 12.0.1 to 12.1.1 ([5f3eaa3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5f3eaa39d843093e31cf308a87fb39749d8eb713))
-   **deps-dev:** bump @commitlint/cli from 12.1.1 to 12.1.4 ([#318](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/318)) ([bb1f0ee](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bb1f0eef7b04d7599777438e20d81fe2aef2dbf1))
-   **deps-dev:** bump @commitlint/cli from 12.1.4 to 13.1.0 ([#337](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/337)) ([20babd0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/20babd0fabb2dd0967cfbacbdc5453953e55eed4))
-   **deps-dev:** bump @commitlint/cli from 13.1.0 to 13.2.1 ([#355](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/355)) ([e2332e1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e2332e13fe452f34823b1ee98d424b2fdb86a876))
-   **deps-dev:** bump @commitlint/cli from 13.2.1 to 14.1.0 ([#366](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/366)) ([fd79d04](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fd79d042126aa6fe8bf2d2b9572168926a24b733))
-   **deps-dev:** bump @commitlint/cli from 14.1.0 to 15.0.0 ([#370](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/370)) ([1f70f0d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1f70f0d7b9236c94c0f5d269abf9a28e900d18d1))
-   **deps-dev:** bump @commitlint/cli from 15.0.0 to 16.0.2 ([#391](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/391)) ([7295a75](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7295a755733eb2f83f483e0bab794cfcfe68ee1f))
-   **deps-dev:** bump @commitlint/cli from 16.0.2 to 16.0.3 ([#396](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/396)) ([4a4f9b0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4a4f9b0f5e73a5d4dfa51c5f26c9f634ea94fcf5))
-   **deps-dev:** bump @commitlint/cli from 16.0.3 to 16.1.0 ([#398](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/398)) ([2a8c2dc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2a8c2dc9aece199f96cfe8812fc7075a3391ce0f))
-   **deps-dev:** bump @commitlint/cli from 16.1.0 to 16.2.1 ([#408](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/408)) ([109aa82](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/109aa820a7beccb17dd3cd981d8657794bb8b9dd))
-   **deps-dev:** bump @commitlint/cli from 16.2.1 to 16.2.3 ([#416](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/416)) ([5fef774](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5fef774d0e4125a0b48cb79e4cb68261bbc66798))
-   **deps-dev:** bump @commitlint/cli from 16.2.3 to 17.0.0 ([#434](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/434)) ([7a2bb3f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7a2bb3f8905ddb660b2e8d8e89a03ceefb7988c0))
-   **deps-dev:** bump @commitlint/cli from 17.0.0 to 17.0.2 ([#443](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/443)) ([4545d35](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4545d35f86ea515787bf80b9a64b468cfbf58fac))
-   **deps-dev:** bump @commitlint/cli from 17.0.2 to 17.0.3 ([#455](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/455)) ([c87014a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c87014a8e5a966236641df0be5d336b24e5ece25))
-   **deps-dev:** bump @commitlint/cli from 17.0.3 to 17.1.2 ([#470](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/470)) ([e351c27](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e351c2726a0ce3e1d3b01711eaee194f110b1d8b))
-   **deps-dev:** bump @commitlint/cli from 17.1.2 to 17.2.0 ([#485](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/485)) ([4edce43](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4edce43c1d1a5af65789db0c11181214f7e5277a))
-   **deps-dev:** bump @commitlint/cli from 17.2.0 to 17.3.0 ([#490](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/490)) ([ebfff84](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ebfff8468d52f05161a69873918d480a85c0d086))
-   **deps-dev:** bump @commitlint/cli from 17.3.0 to 17.4.0 ([#501](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/501)) ([04045a1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/04045a1b859453fe22275f22a464151cf843e010))
-   **deps-dev:** bump @commitlint/cli from 17.4.0 to 17.4.1 ([#502](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/502)) ([d88b590](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d88b590191b6f13a2aa77553040e0c5352903f03))
-   **deps-dev:** bump @commitlint/cli from 17.4.1 to 17.4.2 ([#507](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/507)) ([eaae0e6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/eaae0e62620ba533b6c7f61b9959c35a8f9249bd))
-   **deps-dev:** bump @commitlint/cli from 17.4.2 to 17.4.3 ([#515](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/515)) ([86378b2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/86378b2279939f80fec24ed1b353dcb19d63cf37))
-   **deps-dev:** bump @commitlint/cli from 17.4.3 to 17.4.4 ([#518](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/518)) ([8cd9724](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8cd97249f4247ac489876b624d0c524cc3b9f92a))
-   **deps-dev:** bump @commitlint/config-angular from 12.0.1 to 12.1.1 ([2f1edf1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2f1edf105a7202dd62c267e0e55129d838c93121))
-   **deps-dev:** bump @commitlint/config-angular from 12.1.1 to 12.1.4 ([#317](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/317)) ([81d1572](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/81d1572865181e85acccef9819015e3349680cd7))
-   **deps-dev:** bump @commitlint/config-angular from 12.1.4 to 13.1.0 ([#339](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/339)) ([9f017fd](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9f017fddaa3b27d458b492bbf24c9ad03ed234ba))
-   **deps-dev:** bump @commitlint/config-angular from 13.1.0 to 13.2.0 ([#352](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/352)) ([c84b030](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c84b030a81128d4668ac7ee48bcfcfdf6ecd4abd))
-   **deps-dev:** bump @commitlint/config-angular from 13.2.0 to 14.1.0 ([#365](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/365)) ([d4707d4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d4707d4604d25c287ce9f85bf23349480ddf3c06))
-   **deps-dev:** bump @commitlint/config-angular from 14.1.0 to 15.0.0 ([#371](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/371)) ([d8353ed](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d8353edf72166b1e5dd01c1ae000047d7c73dee4))
-   **deps-dev:** bump @commitlint/config-angular from 15.0.0 to 16.0.0 ([#382](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/382)) ([4a02220](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4a02220174faf41f511b31fadf0a08357c0b31ad))
-   **deps-dev:** bump @commitlint/config-angular from 16.0.0 to 16.2.1 ([#406](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/406)) ([798b76a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/798b76af01c20848690ccf9bd1d48bd105d5a929))
-   **deps-dev:** bump @commitlint/config-angular from 16.2.1 to 16.2.3 ([#417](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/417)) ([8339b1f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8339b1fa0398fd7cdf64ebda0386dd49ac03c685))
-   **deps-dev:** bump @commitlint/config-angular from 16.2.3 to 17.0.0 ([#435](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/435)) ([0fbe6d5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0fbe6d59981b827a0db4f9beadffc6ad5d09184b))
-   **deps-dev:** bump @commitlint/config-angular from 17.0.0 to 17.0.3 ([#454](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/454)) ([cbcab9a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/cbcab9a7066800a007f63c2eed899345af2cc1aa))
-   **deps-dev:** bump @commitlint/config-angular from 17.0.3 to 17.1.0 ([#471](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/471)) ([d2fd04b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d2fd04bcac52cded78e13917eb1bbc8fd2c99922))
-   **deps-dev:** bump @commitlint/config-angular from 17.1.0 to 17.3.0 ([#491](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/491)) ([1ff7673](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1ff7673d60c5a0598987480ecb1845b7c23d9ba9))
-   **deps-dev:** bump @commitlint/config-angular from 17.3.0 to 17.4.0 ([#500](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/500)) ([da7c65d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/da7c65df36446240458983514cbbead2772b680e))
-   **deps-dev:** bump @commitlint/config-angular from 17.4.0 to 17.4.2 ([#506](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/506)) ([97d83c5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/97d83c5f117dde4ee04af755580dea944c38c303))
-   **deps-dev:** bump @commitlint/config-angular from 17.4.2 to 17.4.3 ([#514](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/514)) ([54202b1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/54202b19bd0548c0321dc9c35c215a39715c78e2))
-   **deps-dev:** bump @commitlint/config-angular from 17.4.3 to 17.4.4 ([#519](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/519)) ([f0f2bb3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f0f2bb37807516818225c9f9d146b7786ebae944))
-   **deps-dev:** bump @types/cordova from 0.0.34 to 11.0.0 ([#509](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/509)) ([3b13c80](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3b13c804b1573a6245ecf0df0a41b34f97aab5c7))
-   **deps-dev:** bump husky from 5.1.3 to 5.2.0 ([7fd0e1c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7fd0e1c163a1f1635e76e6d3b6893112c5e89ecb))
-   **deps-dev:** bump husky from 5.2.0 to 6.0.0 ([#295](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/295)) ([8703b76](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8703b76001be5e8328c8c9c1f5a48740b15b324a))
-   **deps-dev:** bump husky from 6.0.0 to 7.0.0 ([#328](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/328)) ([570a6fb](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/570a6fbe6a3e37eb4ee7ed8915641408e1d49712))
-   **deps-dev:** bump husky from 7.0.0 to 7.0.1 ([#330](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/330)) ([6c9e2c9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6c9e2c9af30fdd1fd92b19a513c9d160bec1ad98))
-   **deps-dev:** bump husky from 7.0.1 to 7.0.2 ([#344](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/344)) ([5058229](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/50582295775a1892f79ddc0df26fc34c0f7ddfe8))
-   **deps-dev:** bump husky from 7.0.2 to 7.0.4 ([#361](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/361)) ([a0c8d78](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a0c8d7843cd3d8105d8089cd7d1670474aa14c82))
-   **deps-dev:** bump husky from 7.0.4 to 8.0.1 ([#432](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/432)) ([d4ebae1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d4ebae121b8efb286c34e3b65a8efa6ae568a47a))
-   **deps-dev:** bump husky from 8.0.1 to 8.0.2 ([#487](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/487)) ([d171d04](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d171d047650588a364abc087e03a9393677eeb9c))
-   **deps-dev:** bump husky from 8.0.2 to 8.0.3 ([#499](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/499)) ([c42ef40](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c42ef40091b7eccfab32efcd911cfaf1a2c6305e))
-   **deps-dev:** bump lint-staged from 10.5.4 to 11.0.0 ([#314](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/314)) ([50acd0b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/50acd0b9b84850467906018ba445e1636f2aaa0b))
-   **deps-dev:** bump lint-staged from 11.0.0 to 11.0.1 ([#331](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/331)) ([24153b2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/24153b245c78e4cee8dfe6f659897e6b09861456))
-   **deps-dev:** bump lint-staged from 11.0.1 to 11.1.1 ([#338](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/338)) ([10cc086](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/10cc08615ea139c90ce8fa98faa0bd040d52a27e))
-   **deps-dev:** bump lint-staged from 11.1.1 to 11.1.2 ([#341](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/341)) ([7c67f6b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7c67f6b6f4a570e5a80b0f711eff8fe149e42004))
-   **deps-dev:** bump lint-staged from 11.1.2 to 11.2.3 ([#356](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/356)) ([3925a1a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3925a1aaf60a107dabe5b03ae950cbb9f811353a))
-   **deps-dev:** bump lint-staged from 11.2.3 to 11.2.4 ([#362](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/362)) ([8d31b5a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8d31b5ac82c684cbb2db7d4bb1871d4402545265))
-   **deps-dev:** bump lint-staged from 11.2.4 to 11.2.5 ([#363](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/363)) ([5ec0192](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5ec0192b83317c6858f2151d4548eeacdb01f434))
-   **deps-dev:** bump lint-staged from 11.2.5 to 11.2.6 ([#364](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/364)) ([5e53eca](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5e53ecaddda126f0883b97d3e96add189f86504a))
-   **deps-dev:** bump lint-staged from 11.2.6 to 12.0.2 ([#369](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/369)) ([6f42518](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6f42518c17bbaf865f7faadb768eadb8b8f4c3c0))
-   **deps-dev:** bump lint-staged from 12.0.2 to 12.0.3 ([#373](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/373)) ([4c10d83](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4c10d83008152e5865bcd4f111b66efe5ffc8936))
-   **deps-dev:** bump lint-staged from 12.0.3 to 12.1.2 ([#374](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/374)) ([e600e45](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e600e455ac1366dc6914a7df3b5a9f41356a417b))
-   **deps-dev:** bump lint-staged from 12.1.2 to 12.1.3 ([#380](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/380)) ([9ed405c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9ed405cd3000e17682caf053620b0f87af13b976))
-   **deps-dev:** bump lint-staged from 12.1.3 to 12.1.4 ([#381](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/381)) ([6ee1e69](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6ee1e69f60b4d0629de73c85d9a1ae1e25b6b16b))
-   **deps-dev:** bump lint-staged from 12.1.4 to 12.1.5 ([#386](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/386)) ([b89ac3d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b89ac3d5931998efb802b032f28265f5c97b56b4))
-   **deps-dev:** bump lint-staged from 12.1.5 to 12.1.6 ([#388](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/388)) ([fb5b322](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fb5b3222f68d4238e37a69048f7f89e2e0e1a274))
-   **deps-dev:** bump lint-staged from 12.1.6 to 12.2.1 ([#397](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/397)) ([0e78392](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0e78392a31b9109096759cd865a9484cf8d2e7a4))
-   **deps-dev:** bump lint-staged from 12.2.1 to 12.2.2 ([#399](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/399)) ([123cd81](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/123cd81794d35132dd69c44e6eae11e6f96ed1ab))
-   **deps-dev:** bump lint-staged from 12.2.2 to 12.3.1 ([#401](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/401)) ([2de1a26](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2de1a26d27e6b9b727bb7ad3cb4006f99b5adf92))
-   **deps-dev:** bump lint-staged from 12.3.1 to 12.3.3 ([#405](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/405)) ([1274956](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1274956938c29a003e749f0439534a5309c5ab63))
-   **deps-dev:** bump lint-staged from 12.3.3 to 12.3.5 ([#413](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/413)) ([bc023e0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bc023e02c38686a3422d5a80912051ffca84190e))
-   **deps-dev:** bump lint-staged from 12.3.5 to 12.3.6 ([#415](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/415)) ([e82f9f0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e82f9f018877d97918a906b9f631865989763d75))
-   **deps-dev:** bump lint-staged from 12.3.6 to 12.3.7 ([#419](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/419)) ([50219b1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/50219b1a15d7ab2cbf1fd42cd1726a202962bab8))
-   **deps-dev:** bump lint-staged from 12.3.7 to 12.4.0 ([#427](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/427)) ([dcf066e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dcf066ec16e3b5cb60a09c7b5f1165dfea052db8))
-   **deps-dev:** bump lint-staged from 12.4.0 to 12.4.1 ([#428](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/428)) ([e7ee211](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e7ee211b9899a01fe4aca5211bd85745267768a1))
-   **deps-dev:** bump lint-staged from 12.4.1 to 13.0.0 ([#444](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/444)) ([2975a08](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2975a08ba9e39d54fde9c0b95104e94a344b446a))
-   **deps-dev:** bump lint-staged from 13.0.0 to 13.0.3 ([#452](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/452)) ([3313f80](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3313f807dc7e88538082d2e6647e4bd9dd858d9b))
-   **deps-dev:** bump lint-staged from 13.0.3 to 13.0.4 ([#493](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/493)) ([6efc572](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6efc572d46448bcda1300b54c1fb2fce97b18746))
-   **deps-dev:** bump lint-staged from 13.0.4 to 13.1.0 ([#496](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/496)) ([9680742](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/968074219b9e0391bbc88a66cd2c4c1888724a63))
-   **deps-dev:** bump lint-staged from 13.1.0 to 13.1.1 ([#511](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/511)) ([886fefd](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/886fefdbb87a4b534d67347e5a3dcfc1990fa40a))
-   **deps-dev:** bump lint-staged from 13.1.1 to 13.1.2 ([#516](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/516)) ([5e7fcae](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5e7fcaeabf5a51a72b88a44f94c524c1eb20cbcb))
-   **deps-dev:** bump prettier from 2.2.1 to 2.3.0 ([#313](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/313)) ([a580d85](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a580d85468b465b1eb1b42833f12f25c81d61db8))
-   **deps-dev:** bump prettier from 2.3.0 to 2.3.1 ([#321](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/321)) ([f6b082c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f6b082c2f006967e050e928579763332e750af75))
-   **deps-dev:** bump prettier from 2.3.1 to 2.3.2 ([#325](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/325)) ([b099a07](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b099a07b2e9f29d86620950a7c45bee40bf65b73))
-   **deps-dev:** bump prettier from 2.3.2 to 2.4.1 ([#348](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/348)) ([c37668f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c37668f9e172b47cf7446988d4dbf9d82d4fc67f))
-   **deps-dev:** bump prettier from 2.4.1 to 2.5.0 ([#375](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/375)) ([316012c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/316012c7a095dd2664d135db35f8584bb81a06ea))
-   **deps-dev:** bump prettier from 2.5.0 to 2.5.1 ([#377](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/377)) ([013948b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/013948b541ba546f0b187a8f65b53a76db0d069a))
-   **deps-dev:** bump prettier from 2.5.1 to 2.6.0 ([#418](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/418)) ([95f2454](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/95f2454ee24a03a034f738ccbae86b9dd4ab01b0))
-   **deps-dev:** bump prettier from 2.6.0 to 2.6.1 ([#420](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/420)) ([ad4be82](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ad4be827ede740db4b6ba64e5496b3a07b86b531))
-   **deps-dev:** bump prettier from 2.6.1 to 2.6.2 ([#424](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/424)) ([8a69a68](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8a69a68a5e4b3a4ab78cbd970197e2dea044dc7f))
-   **deps-dev:** bump prettier from 2.6.2 to 2.7.1 ([#449](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/449)) ([f263bf6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f263bf6701ba5163b2228b87d86bb350573c2711))
-   **deps-dev:** bump prettier from 2.7.1 to 2.8.0 ([#492](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/492)) ([e20efbe](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e20efbe68c69193dfe0e9fa899cadc4fab00fab9))
-   **deps-dev:** bump prettier from 2.8.0 to 2.8.1 ([#497](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/497)) ([a5ac648](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a5ac648c23507dbbc20525aa0a4da836dc8724fa))
-   **deps-dev:** bump prettier from 2.8.1 to 2.8.2 ([#503](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/503)) ([0fac688](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0fac688598813f74c64b7ae682b385afe2bad4fd))
-   **deps-dev:** bump prettier from 2.8.2 to 2.8.3 ([#508](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/508)) ([eed9160](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/eed9160afe1dd74afa405510e0b057b31533f86b))
-   **deps-dev:** bump prettier from 2.8.3 to 2.8.4 ([#512](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/512)) ([72a1746](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/72a174642417d4fb30eda7696dd2dc23b4b21292))
-   **deps-dev:** bump replace from 1.2.0 to 1.2.1 ([0b39398](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0b393984413bceb808090c240da9c9916c819ca3))
-   **deps-dev:** bump replace from 1.2.1 to 1.2.2 ([#482](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/482)) ([8f43bbc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8f43bbcf33e4e865bb8abc7d3ad7ab27435960c6))
-   **deps-dev:** bump standard-version from 9.1.1 to 9.2.0 ([0bb5352](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0bb5352c5a0e7c6a2c79b57c4eae33aaa88b79a9))
-   **deps-dev:** bump standard-version from 9.2.0 to 9.3.0 ([#311](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/311)) ([c0ca7da](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c0ca7dac741ff282873a725b060b3a69716ef744))
-   **deps-dev:** bump standard-version from 9.3.0 to 9.3.1 ([#332](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/332)) ([3becd4c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3becd4c08b0eba3161c26c26a79f95e278e8201d))
-   **deps-dev:** bump standard-version from 9.3.1 to 9.3.2 ([#359](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/359)) ([46d436d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/46d436dd63cf647cbce4a69a0e0e0ec6c6d2a646))
-   **deps-dev:** bump standard-version from 9.3.2 to 9.5.0 ([#437](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/437)) ([4e8cb4a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4e8cb4a82f3c1999052cead9c76bd0e82a86152a))
-   **deps-dev:** bump typescript from 4.2.2 to 4.2.3 ([f51bfb5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f51bfb5607fe65014c5737d22643e183c540ec0e))
-   **deps-dev:** bump typescript from 4.2.3 to 4.2.4 ([3fd8768](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3fd8768f4196dcd281fa3d434c87f3ab88c87434))
-   **deps-dev:** bump typescript from 4.2.4 to 4.3.2 ([#319](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/319)) ([0ccaf9d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0ccaf9d8a75bb1869e4d25e5579cb05a0759c1e6))
-   **deps-dev:** bump typescript from 4.3.2 to 4.3.4 ([#324](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/324)) ([5062044](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/506204496c9c333d6a3b727dc33bef41d5959c03))
-   **deps-dev:** bump typescript from 4.3.4 to 4.3.5 ([#329](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/329)) ([74b51d7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/74b51d7915cc736ef0cef370084c6e1569e9f9e8))
-   **deps-dev:** bump typescript from 4.3.5 to 4.4.4 ([#354](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/354)) ([2c113db](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2c113db9065e0a19c90d0d316a6eff7d04d88eeb))
-   **deps-dev:** bump typescript from 4.4.4 to 4.5.2 ([#372](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/372)) ([78ed5ad](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/78ed5ad4d83e3f101c5813947304219dafc66107))
-   **deps-dev:** bump typescript from 4.5.2 to 4.5.3 ([#378](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/378)) ([b2fdec9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b2fdec93cbc2efbb654b6e8aaec7c02c7e7b1962))
-   **deps-dev:** bump typescript from 4.5.3 to 4.5.4 ([#379](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/379)) ([02eea66](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/02eea666ce32ad8cbdb4721f1d3f47a5b7865748))
-   **deps-dev:** bump typescript from 4.5.4 to 4.5.5 ([#400](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/400)) ([fb6d095](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fb6d09538e220414143dbcdc123de77329264703))
-   **deps-dev:** bump typescript from 4.5.5 to 4.6.2 ([#411](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/411)) ([0c7404b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0c7404b59781402ab993ce9748acfe457b1f2368))
-   **deps-dev:** bump typescript from 4.6.2 to 4.6.3 ([#421](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/421)) ([2847e13](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2847e13499c5bf338d080468dae224fa57bd2bbf))
-   **deps-dev:** bump typescript from 4.6.3 to 4.6.4 ([#431](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/431)) ([5ef3027](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5ef302710df5fd7e489fc84afe546d761c9a4116))
-   **deps-dev:** bump typescript from 4.6.4 to 4.7.3 ([#446](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/446)) ([dd86f84](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dd86f84c8f90d4fa5474714ba542acc99c40054c))
-   **deps-dev:** bump typescript from 4.7.3 to 4.7.4 ([#451](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/451)) ([e10c821](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e10c821b56056d7ae613a4ac332cd2273b259990))
-   **deps-dev:** bump typescript from 4.7.4 to 4.8.2 ([#469](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/469)) ([37c96e8](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/37c96e8a12c85249cd0f409c38edc9b6d601b95a))
-   **deps-dev:** bump typescript from 4.8.2 to 4.8.3 ([#472](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/472)) ([7a9984d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7a9984d505676b5b7cf8b3293d81b88ef7c2e857))
-   **deps-dev:** bump typescript from 4.8.3 to 4.8.4 ([#476](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/476)) ([46b6df1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/46b6df13edae9e3a0ff4098220380057fb9ad4f0))
-   **deps-dev:** bump typescript from 4.8.4 to 4.9.4 ([#498](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/498)) ([4636809](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4636809edb01e1b256363664bf5827018e3a2f8c))
-   **deps-dev:** bump typescript from 4.9.4 to 4.9.5 ([#510](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/510)) ([1a4a958](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1a4a9584e274b1a6831eaf798d10dd61ec325172))
-   **deps-dev:** update dependency versions ([ed66409](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ed664093e7e48dc8bb49fe68595b11f5a62c428c))
-   **deps:** bump actions/checkout from 2 to 2.3.4 ([#316](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/316)) ([27e450c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/27e450cfa7d17930ec69bb2a401f42696904dad6))
-   **deps:** bump actions/checkout from 2.3.4 to 2.3.5 ([#358](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/358)) ([a58e56b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a58e56b0ddc9881574b5e1de534f0a9bf6b2e153))
-   **deps:** bump actions/checkout from 2.3.5 to 2.4.0 ([#367](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/367)) ([09a6531](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/09a65310a1be77f3c91f690e2ea85525d4613464))
-   **deps:** bump actions/checkout from 2.4.0 to 3 ([#412](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/412)) ([45c4112](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/45c411241a614b7eaf1a0143b1e0c80b9e128dcf))
-   **deps:** bump actions/setup-java from 2 to 3 ([#425](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/425)) ([03ac2bf](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/03ac2bfcefeda4d00b107e848eac6498b16d7aa3))
-   **deps:** bump actions/setup-java from v1 to v2 ([#308](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/308)) ([573a54f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/573a54f2ee864ef089af427c3ff49ca657d097e9))
-   **deps:** bump actions/setup-node from 2.1.5 to 2.2.0 ([#326](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/326)) ([7c78ea3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7c78ea363d96057740c306c65c1e844db9adacae))
-   **deps:** bump actions/setup-node from 2.2.0 to 2.3.0 ([#334](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/334)) ([2963f21](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2963f219d4df04a689de6997d6079276551c89e5))
-   **deps:** bump actions/setup-node from 2.3.0 to 2.4.0 ([#342](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/342)) ([190ec80](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/190ec80b41816cbd35c51970d9feb4b6876eada6))
-   **deps:** bump actions/setup-node from 2.4.0 to 2.4.1 ([#349](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/349)) ([c4a408c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c4a408ce4a93d01a9f0cb3731e415fe0288b0217))
-   **deps:** bump actions/setup-node from 2.4.1 to 2.5.0 ([#376](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/376)) ([0b8a5bf](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0b8a5bfce9183affd7fa3de1edf087097d2c4daa))
-   **deps:** bump actions/setup-node from 2.5.0 to 2.5.1 ([#385](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/385)) ([b8cf178](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b8cf1786402d91b963dfac54d4fb1f39cd4f9b9b))
-   **deps:** bump actions/setup-node from 2.5.1 to 3 ([#410](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/410)) ([47848c4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/47848c4414479885ef7b76620c4ec0bfc14dcfd9))
-   **deps:** bump actions/setup-node from v1 to v2.1.5 ([#307](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/307)) ([588627c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/588627c3c5fc1082f6d0644602b14beee7d3a698))
-   **deps:** bump ansi-regex from 5.0.0 to 5.0.1 ([#351](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/351)) ([b8b2362](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b8b2362aa62625456e7bcbd8cad82b150bfd04f3))
-   **deps:** bump lodash from 4.17.20 to 4.17.21 in /example ([#315](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/315)) ([1859c04](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1859c04558f6457f89c04aa52ac972786355f80f))
-   **deps:** bump maxim-lobanov/setup-xcode from 1.2.3 to 1.4.0 ([#353](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/353)) ([8cb906a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8cb906acf3046f05445e3b27368e60011a5ee803))
-   **deps:** bump maxim-lobanov/setup-xcode from 1.4.0 to 1.4.1 ([#387](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/387)) ([6e0634b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6e0634be6ab9f65af3cf10fad6504bcc8990d264))
-   **deps:** bump maxim-lobanov/setup-xcode from 1.4.1 to 1.5.1 ([#481](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/481)) ([5f33914](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5f3391478f5c6ab7f69e9e42da0d12416f6bd3d0))
-   **deps:** bump maxim-lobanov/setup-xcode from v1.1 to v1.2.3 ([#309](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/309)) ([fd53b2f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fd53b2f5dd5f705a802a8c78caeb7cadb5fada66))
-   **deps:** bump minimatch from 3.0.4 to 3.0.5 ([#494](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/494)) ([bcf73ae](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bcf73ae09496fc9142f2ccc10135abb719fd5573))
-   **deps:** bump minimatch from 3.0.4 to 3.1.2 in /example ([#495](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/495)) ([f3f30ea](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f3f30ea63d0a42db233a095c5d294354804d759c))
-   **deps:** bump minimist from 1.2.5 to 1.2.6 ([#422](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/422)) ([8595882](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8595882070558749f05b5ecc58e019829f087f57))
-   **deps:** bump path-parse from 1.0.6 to 1.0.7 ([#350](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/350)) ([17965e4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/17965e452c0408f266eff4bcdaaba85223156f0e))
-   **deps:** bump plist from 3.0.4 to 3.0.5 in /example ([#423](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/423)) ([b8a3a31](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b8a3a31203aae60f23579f5e3ff73037c187b2cb))
-   **deps:** bump shelljs and simctl in /example ([#479](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/479)) ([b656ac1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b656ac14b95558a3fd6a714d89d8dfede8f75276))
-   **deps:** bump simple-plist from 1.1.1 to 1.3.1 in /example ([#445](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/445)) ([4fbaed2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4fbaed2d0abe4e69c74b987e1113facc7fab51df))
-   **deps:** bump trim-newlines from 3.0.0 to 3.0.1 ([#333](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/333)) ([f99e506](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f99e506446c58f00d14597979a8be0677de42700))
-   **deps:** bump underscore from 1.12.0 to 1.13.1 in /example ([#312](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/312)) ([8160e37](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8160e373911735b845421589fde888987d68e747))
-   **deps:** downgrade appcompat to v30 SDK ([1fab2c3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1fab2c3eb98150040b0097536aac0f0a376d3b32))
-   **deps:** downgrade appcompat to v32 SDK ([a72c01e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a72c01e52ef9bd98a6d8257f26f369566c5e48ba))
-   **deps:** downgrade Kotlin to 1.7 ([285229a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/285229a9e318ff41b7569d3552cc8febb38a1bd0))
-   **deps:** downgrade problematic dep ([ec506cf](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ec506cf4ba3b9a60fde081376ca98447a0c9fad0))
-   **deps:** udpates lottie-ios ([ecbdb1c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ecbdb1c800144d5ab29a739fa1d95dae64e91f12))
-   **deps:** update lottie-ios to v3.5.0 and update app compat lib ([9a33188](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9a33188f15040da0bed0b15479fe94b1c939cfb6))
-   **deps:** upgrade dependencies ([e656f63](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e656f632edf69797479b53cb264c9a344dc850e9))
-   **deps:** upgrades lottie-android to 3.7.1 ([d8776de](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d8776de00525675f7c9f7b718cf3335f244f0f99))
-   **deps:** upgrades lottie-ios to 3.2.2 ([0748eda](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0748eda6c54ea997a12ed10402b14328081fbc45))
-   install latest platforms ([#357](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/357)) ([5fe2a87](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5fe2a87644f5e3fc00549f813d3ff607fb3f19ef))
-   rebuild lockfiles ([c88fffd](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c88fffdcb8335c3d6bbdb8063638abc80778df1e))
-   rebuild lockfiles ([38da830](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/38da830c622439c473979bd4c2dbbaac58b46840))
-   rebuild lockfiles ([abd3c9a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/abd3c9a996423d304702df9db6b7e02f61665edb))
-   rebuild lockfiles ([d415b69](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d415b69572987e3f983dd29a726928051f90a555))
-   remove obsolete pinst ([0ae0816](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0ae08164101398e8a7dc605c44450ec49dae1bfe))
-   remove obsolete plugin ([caf2805](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/caf2805fd28d1da739484fd0acfce2f536865af3))

### [0.9.6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.5...v0.9.6) (2021-03-04)

### Bug Fixes

-   change file name for case sensitive file systems ([#291](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/291)) ([8a5fe34](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8a5fe34b08213f3ef2388f70b8d3487072cdec6e))

### Build System

-   **ci:** workaround Ionic CLI failure ([5260544](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5260544b1b4473f74f65e7465dd2d9402d7e0b5d))
-   **ci:** workaround Ionic CLI failure ([81e1347](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/81e13478cdaf76c25f1e53faf10201d63cab4f8d))
-   **deps:** updates lottie-ios to 3.2.0 ([b2103fb](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b2103fb38304f8a94a057b0d28755dda53a02194))
-   **deps:** updates lottie-ios to 3.2.1 ([8e96c92](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8e96c92332258820ee2aad1f8aa66e62b6ffb027))
-   **deps-dev:** bump @commitlint/cli from 11.0.0 to 12.0.0 ([#281](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/281)) ([55ff4a9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/55ff4a92fc568b094e3362f6b1ad417d4f69cc66))
-   **deps-dev:** bump @commitlint/cli from 12.0.0 to 12.0.1 ([183f0a4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/183f0a4c32d90f4729325537e7298c83ef33b12b))
-   **deps-dev:** bump @commitlint/config-angular from 11.0.0 to 12.0.0 ([#283](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/283)) ([453a132](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/453a132f1c16acae4b4c705e75b1ef32c211bb27))
-   **deps-dev:** bump @commitlint/config-angular from 12.0.0 to 12.0.1 ([98074f1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/98074f1f63a79602f8731ec8b49af9eb5e0f2631))
-   **deps-dev:** bump husky from 4.3.8 to 5.0.9 ([#275](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/275)) ([e4e9f10](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e4e9f101703ca32ddea4674c97a423c2de46f35d))
-   **deps-dev:** bump husky from 5.0.9 to 5.1.0 ([50528a5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/50528a5d016c7fadaa5b50c4f4e52d9921986ea5))
-   **deps-dev:** bump husky from 5.1.0 to 5.1.1 ([0f54df6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0f54df65fa92f8186df2db8c25b646a90140834c))
-   **deps-dev:** bump husky from 5.1.1 to 5.1.2 ([044a812](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/044a812074076c03d75d92e81b847b9babe5fc4c))
-   **deps-dev:** bump husky from 5.1.2 to 5.1.3 ([6d658c2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6d658c2c4cd61b945e7077f7623a38150bc8a3a9))
-   **deps-dev:** bump lint-staged from 10.5.3 to 10.5.4 ([#274](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/274)) ([4f42ed3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4f42ed3fd6441935f7d496c8883156aa4a8e6d0b))
-   **deps-dev:** bump pinst from 2.1.4 to 2.1.6 ([830015d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/830015d034c8ea790aef3150eaeee41d36812ee8))
-   **deps-dev:** bump standard-version from 9.1.0 to 9.1.1 ([1c0ab6e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1c0ab6e8149c1da85dc37ccab14ca06f6eb023f2))
-   **deps-dev:** bump typescript from 4.1.3 to 4.1.4 ([#276](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/276)) ([bcec398](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bcec3987f41b640bf30ef69563a26aadc90e2bb9))
-   **deps-dev:** bump typescript from 4.1.4 to 4.1.5 ([c6a05d9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c6a05d91731484f55894938467b5513328eff755))
-   **deps-dev:** bump typescript from 4.1.5 to 4.2.2 ([b105e70](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b105e70549dcdf7b6e222781cb64c1bf3767d17a))
-   rebuild lockfile ([b8d2c8e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b8d2c8e9bc36bcdf50c69f8560c0fdb5f8a5e571))

### [0.9.5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.4...v0.9.5) (2021-01-24)

### Bug Fixes

-   **android:** ensure fallback location works correctly. Closes [#272](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/272) ([b493212](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b4932120238a21989f6aac45784aead636684023))

### [0.9.4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.3...v0.9.4) (2021-01-22)

### Bug Fixes

-   guard dark mode check with #available ([5d3e950](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5d3e95073ee35bf15592ad36df03c8c249e74253))

### Code Refactoring

-   **android:** split code into smaller functions ([6cd7b62](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6cd7b623404f8c0427f08bbd4dfdb5528bd0f6fb))

### [0.9.3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.2...v0.9.3) (2021-01-21)

### Features

-   adds dark mode support, closes [#270](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/270) ([01dba28](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/01dba28ac37fadb431e28e2284da911caa325e4f))

### Build System

-   **deps-dev:** bump husky from 4.3.7 to 4.3.8 ([5ff8981](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5ff89813cbe8dcc0e84c727a4cdc9705211d3863))

### [0.9.2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.1...v0.9.2) (2021-01-10)

### Build System

-   **deps:** bump ini from 1.3.5 to 1.3.7 ([#265](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/265)) ([e511bef](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e511bef1346f534f69489e13e63b7ae3bb54c5e6))
-   **deps:** bumps lottie-ios to 3.1.9 ([7df66e6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7df66e6ee3fdbec1feacc29567a22ed73404bbeb))
-   **deps:** upgrades lottie-android to v3.5.0 ([17500b0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/17500b0b329e9299c820dae7702a433e184959b2))
-   **deps-dev:** bump husky from 4.3.0 to 4.3.5 ([1334178](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1334178a708a350926a0f98901408842998db0ef))
-   **deps-dev:** bump husky from 4.3.5 to 4.3.6 ([75873fa](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/75873fa92e7a28ce23923d6412b101c1b75d7837))
-   **deps-dev:** bump husky from 4.3.6 to 4.3.7 ([a3ea0e4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a3ea0e47685a31c9c7c59a4bbb64889b97fcdcc6))
-   **deps-dev:** bump lint-staged from 10.4.2 to 10.5.0 ([55d0dd3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/55d0dd3bb61b272f5943525f6d024846241d9f4e))
-   **deps-dev:** bump lint-staged from 10.5.0 to 10.5.1 ([1059064](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/10590643934ebe6aefe4ad745df8647c9434b31e))
-   **deps-dev:** bump lint-staged from 10.5.1 to 10.5.2 ([e0ca9f4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e0ca9f48c676bde3eeeea8aa9402949c979fb1e3))
-   **deps-dev:** bump lint-staged from 10.5.2 to 10.5.3 ([6dd82e1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6dd82e11e143b90114e1cf860f659e93123c0457))
-   **deps-dev:** bump prettier from 2.1.2 to 2.2.0 ([e67440d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e67440dff74ae6196fb1109703c4412f87eb275d))
-   **deps-dev:** bump prettier from 2.2.0 to 2.2.1 ([2ff0e8b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2ff0e8b923a77b874a8b459a38b1c759816af767))
-   **deps-dev:** bump standard-version from 9.0.0 to 9.1.0 ([4f0a67b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4f0a67bfb6cbf51dc3cf6644401ff24131497ea1))
-   **deps-dev:** bump typescript from 4.0.3 to 4.0.5 ([f3585f3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f3585f3bcc795bc3ad2fbfdabf2a2914ef09e58a))
-   **deps-dev:** bump typescript from 4.0.5 to 4.1.2 ([49d94d9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/49d94d971649be14e6a8f318f0f18a5a49cf4557))
-   **deps-dev:** bump typescript from 4.1.2 to 4.1.3 ([7274cb6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7274cb6d05d628762ba96a74c8eeaeb9a16ad3c0))

### [0.9.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.9.0...v0.9.1) (2020-10-26)

### Bug Fixes

-   kotlin warning ([d23727a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d23727a0d69e0c46e184cb0b861b7664cf09efb3))

### Build System

-   **deps:** upgrades lottie-android to 3.4.2 ([77d7d9d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/77d7d9d050c081b1ecef7e7680f4d1f2f0cf167e))
-   **deps:** upgrades lottie-android to 3.4.4 ([0168a4c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0168a4cc148d03388587e10f7332d0fb3631c951))
-   **deps-dev:** bump @commitlint/cli from 9.1.2 to 11.0.0 ([#246](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/246)) ([be2c33b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/be2c33b5b18f84581614bfa71ef8a280b4e189ef))
-   **deps-dev:** bump @commitlint/config-angular from 9.1.2 to 11.0.0 ([#245](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/245)) ([d95de73](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d95de7393f286b3161c76361988afdc89f3551c4))
-   **deps-dev:** bump husky from 4.2.5 to 4.3.0 ([854c325](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/854c325b20ad63f33e19194c9c7f359223b7fe9e))
-   **deps-dev:** bump lint-staged from 10.2.11 to 10.2.13 ([e7c5e4c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e7c5e4cab7e63e19cc3f30109eac592da2eafe8a))
-   **deps-dev:** bump lint-staged from 10.2.13 to 10.3.0 ([e6a716f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e6a716f878938807ce28cea4b7f6e452593f4adf))
-   **deps-dev:** bump lint-staged from 10.3.0 to 10.4.0 ([62d0fc2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/62d0fc2e305b414a3bedc58090f724a4873c5f20))
-   **deps-dev:** bump lint-staged from 10.4.0 to 10.4.1 ([#250](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/250)) ([37cb28a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/37cb28a50cb1b7268537605bc2fc9337bd6078ba))
-   **deps-dev:** bump lint-staged from 10.4.1 to 10.4.2 ([dcc77c2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dcc77c2ddf6ecbd6db4269f7f2b4de908c2e75eb))
-   **deps-dev:** bump prettier from 2.0.5 to 2.1.0 ([0120f6f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0120f6f841b2082300501877c7c0821a40b2ae41))
-   **deps-dev:** bump prettier from 2.1.0 to 2.1.1 ([30add8d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/30add8db54119b4b6cae9aac1c4b1773a21e9585))
-   **deps-dev:** bump prettier from 2.1.1 to 2.1.2 ([c5aceab](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c5aceab397dc1ca5d3566d040eafa851967c2152))
-   **deps-dev:** bump standard-version from 8.0.0 to 8.0.1 ([#228](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/228)) ([0cdb42b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0cdb42b9b472dd40ace6ed5c5f8586f2b9ef880f))
-   **deps-dev:** bump standard-version from 8.0.1 to 8.0.2 ([6654968](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6654968589b93dca2f7ada72015f7a9ee2b5ccfe))
-   **deps-dev:** bump standard-version from 8.0.2 to 9.0.0 ([#233](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/233)) ([a92e800](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a92e800d7cf1593812d2d10e1039e14d89d3f69a))
-   **deps-dev:** bump tslint from 6.1.2 to 6.1.3 ([#232](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/232)) ([75c36ac](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/75c36acce927d38b30c9d80455a7b9b0fa306eac))
-   **deps-dev:** bump typescript from 3.9.5 to 3.9.6 ([#227](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/227)) ([d279f65](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d279f6543e35741005be349617fcdebcd9a2a93b))
-   **deps-dev:** bump typescript from 3.9.6 to 3.9.7 ([51858cc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/51858cc2cd355d4d0df6f4ae45ee582a9c1b9402))
-   **deps-dev:** bump typescript from 3.9.7 to 4.0.2 ([#236](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/236)) ([d13b922](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d13b922618495f3ae8a9db3a1be542ba15ac465f))
-   **deps-dev:** bump typescript from 4.0.2 to 4.0.3 ([88560c5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/88560c5712ae843996321d5e191e9bdb61957caf))
-   [security] re-build lockfiles ([de18cc5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/de18cc545a60c5caa681454beb8671a270cb36dc))
-   **travis:** test against Xcode 12 and cordova-ios@6.1.0 ([#229](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/229)) ([3a7c7dd](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3a7c7dd635045240b7ba1799b2b9689ce5035fa6))
-   rebuild lockfiles ([1481183](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/148118380395aaa873b26dbdab4ac0d4b55e4e4f))
-   rebuild lockfiles ([b83d704](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b83d704cc36aa976153cc64f8d1f14a1a317a3ee))

## [0.9.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.1...v0.9.0) (2020-06-29)

### ⚠ BREAKING CHANGES

-   cordova-android >=9.0.0 is required

### Features

-   adds native Kotlin and AndroidX support ([#167](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/167)) ([185bbc2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/185bbc2d72c7d870315c853e02e7181c4b04c12b))

### Build System

-   **deps:** rebuilt lockfile to fix (some) npm audit warnings ([45cf26a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/45cf26a98f5d0bd672a5c090c9c9a2af4fef92c4))
-   **deps:** updates lottie-ios to v3.1.8 ([a9bbdc5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a9bbdc547e3393b3eb80c0ff6de171b24875d793))
-   **deps:** upgrades Kotlin to v1.3.72 ([da13bf7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/da13bf76ab997efaa30e0d6d4a913c21ffb97b0f))
-   **deps-dev:** bump @commitlint/cli from 8.3.5 to 9.0.1 ([#225](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/225)) ([7e99e6c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7e99e6c269b0c2f4d0e905c4686eb10f3191202c))
-   **deps-dev:** bump @commitlint/config-angular from 8.3.4 to 9.0.1 ([#226](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/226)) ([d355e2b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d355e2b98e02636cad49c3a4b768622b97799d30))
-   **deps-dev:** bump husky from 4.2.3 to 4.2.5 ([e2a82ef](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e2a82ef68c54e1f762a805b10191934b0dfd0f77))
-   **deps-dev:** bump lint-staged from 10.1.2 to 10.1.3 ([6761f04](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6761f04eef093697dee59ca63377ff8a4fcedc20))
-   **deps-dev:** bump lint-staged from 10.1.3 to 10.1.6 ([#199](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/199)) ([6b16efc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6b16efc24bcfa37fe01636a1a43000d75c31e68a))
-   **deps-dev:** bump lint-staged from 10.1.6 to 10.1.7 ([c068ac5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c068ac5c9bdfe3ce91ca9b2087f7b761746f8cac))
-   **deps-dev:** bump lint-staged from 10.1.7 to 10.2.0 ([8bd5a95](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8bd5a958a90e0f21312e637661f5ac6d2ccdec13))
-   **deps-dev:** bump lint-staged from 10.2.10 to 10.2.11 ([#223](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/223)) ([aa290b3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/aa290b36dcef3b249e58d2bac30e6d5904d935fb))
-   **deps-dev:** bump lint-staged from 10.2.2 to 10.2.3 ([#209](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/209)) ([d3e2dfa](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d3e2dfaab4566d540991f7afda788b0bec480664))
-   **deps-dev:** bump lint-staged from 10.2.3 to 10.2.4 ([#210](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/210)) ([4877b5c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4877b5c02509b5fac7954cd6a47d1f19fd1a70fc))
-   **deps-dev:** bump lint-staged from 10.2.4 to 10.2.6 ([#212](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/212)) ([acd7d0e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/acd7d0eebf2968901cf2a72ada60b76b5fb7cc3f))
-   **deps-dev:** bump lint-staged from 10.2.6 to 10.2.7 ([#214](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/214)) ([2088120](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/20881209288c4181bc07ff569632120c46b6238c))
-   **deps-dev:** bump lint-staged from 10.2.7 to 10.2.9 ([#215](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/215)) ([8dcbc1f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8dcbc1f577d97dd07746cc65bec35e30dd53f0d4))
-   **deps-dev:** bump lint-staged from 10.2.9 to 10.2.10 ([#222](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/222)) ([36d1a24](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/36d1a24766943bcb162c06c95d40ed94e202ccfd))
-   **deps-dev:** bump prettier from 2.0.4 to 2.0.5 ([19a9516](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/19a95169edd36e0356a8355c8ff0c74495438a09))
-   **deps-dev:** bump replace from 1.1.5 to 1.2.0 ([f2d81ba](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f2d81ba4537e40d5fc46785d4d0b4675400b5984))
-   **deps-dev:** bump standard-version from 7.1.0 to 8.0.0 ([#207](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/207)) ([36674ab](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/36674abd4e06c3ce5b53722a28c7bc99d31f88a2))
-   **deps-dev:** bump tslint from 6.1.1 to 6.1.2 ([72403f2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/72403f2b8af1d19952e655eef6318c1a7664809c))
-   **deps-dev:** bump typescript from 3.8.3 to 3.9.2 ([#208](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/208)) ([ff66fec](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ff66fec7586e200c6bfe7b8dd4ec2381405c971a))
-   **deps-dev:** bump typescript from 3.9.2 to 3.9.3 ([#211](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/211)) ([077325b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/077325bb751359a91cdfb33c11935ad92cd4194f))
-   **deps-dev:** bump typescript from 3.9.3 to 3.9.5 ([#216](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/216)) ([a263c80](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a263c809b5e8832db1f0b820575d911524e3d620))
-   **deps-dev:** updates deps ([47fbb6f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/47fbb6fc8b29d4e449bf0be0e822f37fdf5fd914))

### [0.8.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.1-beta.3...v0.8.1) (2020-04-08)

### Bug Fixes

-   ensure that lottieAnimationEnd is always called. closes [#175](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/175) ([15a8cea](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/15a8cea0a1c27106298782fbc9037948137efaa7))

### Build System

-   updates dependencies ([caf919a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/caf919a3fd9b2a36fe230af26fb0ce028cd28a4f))

### [0.8.1-beta.3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.1-beta.2...v0.8.1-beta.3) (2020-04-07)

### Bug Fixes

-   adds missing method for Swift ([74998a5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/74998a5db8f00b070d627fa897e3d1c22b7f2771))

### Build System

-   **deps:** **security** rebuilds lockfile to fix npm audit warning ([a47cf8d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a47cf8d03736a1efc9c122b997bee938903a4abb))
-   **deps-dev:** bump lint-staged from 10.0.10 to 10.1.0 ([8c84d4c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8c84d4c00d485120b9544fa55e57c332b38d6163))
-   **deps-dev:** bump lint-staged from 10.1.0 to 10.1.1 ([878ca80](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/878ca8021f4bf932f859aca949b0299d5e30d6a2))
-   **deps-dev:** bump lint-staged from 10.1.1 to 10.1.2 ([a764096](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a7640966f3c2d278d9281b435d52a5c26b3ae690))
-   **deps-dev:** bump prettier from 2.0.2 to 2.0.4 ([46a4050](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/46a405042fb5cb7ce693a297ee0c10f2a98b20e4))

### [0.8.1-beta.2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.1-beta.1...v0.8.1-beta.2) (2020-03-30)

### Bug Fixes

-   actually remove hook file for ios ([ca1bb51](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ca1bb51d67a5cb23bcca88afaa059752bca000f7))

### Code Refactoring

-   ensure to call lottieAnimationEnd if deviceready is fired afterwards ([f9c20a5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f9c20a5b09975c8a5c458d721af1873818f2acbb))

### Build System

-   adds new dist folder ([bda2e0b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bda2e0bd4550418c76008b2f840034a273857437))
-   **deps-dev:** bump lint-staged from 10.0.9 to 10.0.10 ([23bc6e3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/23bc6e37985ece2196da49148c2c3d708dc016c7))
-   adds funding link to npm ([befcd55](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/befcd552a0eeff395f33e353748c7cee15ba8b52))
-   simplifiy .npmignore ([8eb8f9a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8eb8f9a8a16a15c9397633674a794e49ea7a1afc))

### [0.8.1-beta.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.1-beta.0...v0.8.1-beta.1) (2020-03-29)

### Build System

-   **ci:** downgrades Android image back to 28.0.3 and use Bionic ([f4a85e6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f4a85e6636e46fa7f02624b26f386c0e875345e9))
-   **ci:** re-adds Swift version ([010ba33](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/010ba33c5d4df398b4b41dd1b4c5911dcbb48c82))
-   **ci:** removes Bionic update ([9549f42](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9549f424259197ed7fc011e4dc1637372faf0d03))
-   **ci:** updates Xcode and Android images ([dee673b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dee673b519c8aafa83fd5acb1c6f403d574b6734))
-   **deps:** upgrade Kotlin dependency to 1.3.71 ([ecb0d25](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ecb0d25c7549c3845f8f5b1e5ac09fecb6dc3e0d))
-   **deps-dev:** bump lint-staged from 10.0.8 to 10.0.9 ([d35d24c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d35d24cc3ec13e6c444749f5fe2cf75ee1eb077f))
-   **deps-dev:** bump prettier from 1.19.1 to 2.0.2 ([2bbd3d0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2bbd3d0ad1bdfe3431ecdd92ed9899710d784b6b))
-   **deps-dev:** bump tslint from 6.0.0 to 6.1.0 ([6d64fb8](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6d64fb86a16cf347fc7534a856b959d70f5fc1de))

### [0.8.1-beta.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.0...v0.8.1-beta.0) (2020-03-06)

### Features

-   adds feature to disable caching. closes [#139](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/139) ([d8093a6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d8093a650f45c3e027c1fdfb597759067ee2e798))

### Bug Fixes

-   adds readonly prop to identify finished animation state. ref [#175](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/175) ([670aee4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/670aee4b5c05f8fa6421193083d7ee60f6fb38d7))

### Build System

-   **deps:** upgrade Kotlin dependency to 1.3.70 ([7d19792](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7d19792bcc956e07840033ab37f4c8acac471c70))
-   **deps-dev:** bump husky from 4.2.1 to 4.2.2 ([7bcb009](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7bcb009b0546ef06f539eab1cddf70024b285d3f))
-   **deps-dev:** bump husky from 4.2.2 to 4.2.3 ([edae916](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/edae916c04f0faf27570ad7e6b3a0a449f5a8326))
-   **deps-dev:** bump lint-staged from 10.0.7 to 10.0.8 ([e081cb9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e081cb90bb402c39a2c65297c33ece644f5fcf6d))
-   **deps-dev:** bump typescript from 3.7.5 to 3.8.2 ([49b928f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/49b928fa2ede27fc35c96a778a7dbc9ac670a86e))
-   **deps-dev:** bump typescript from 3.8.2 to 3.8.3 ([04ef527](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/04ef527cb805bff04aa283fbb3e86f84dad26320))

## [0.8.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.0-beta.4...v0.8.0) (2020-02-06)

### ⚠ BREAKING CHANGES

-   CocoaPods >= 1.8.4 required for building

### Performance Improvements

-   use CocoaPods CDN ([6665dfa](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6665dfabc5565199ea6b49a90ddd0e1295aa85cc))

### Build System

-   fix version bumping and committing ([4fc12fb](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4fc12fb8754580093c7e2bd13dc6bf7b9ca347d2))
-   rebuild lockfiles ([4253d45](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4253d45f0375d4d474347d3aa1a29b736809e59a))

## [0.8.0-beta.4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.0-beta.3...v0.8.0-beta.4) (2020-02-05)

### Build System

-   publish .d.ts files, too ([3ae7ce3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3ae7ce3fbacfd99b0d85441f3230a90059b245d1))

## [0.8.0-beta.3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.0-beta.2...v0.8.0-beta.3) (2020-02-05)

### Features

-   adds preference to hide animation after it has been played. ref [#133](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/133) ([068d457](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/068d457f83bc891274d47e97add550b5799243f4))

### Code Refactoring

-   adds a once method, use callback functions for on events ([72aae6b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/72aae6b181949ec327ef7bf3eb5e860e1dfd5ed7))

## [0.8.0-beta.2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.0-beta.1...v0.8.0-beta.2) (2020-02-04)

### ⚠ BREAKING CHANGES

-   **android:** Android treats the hide timeout config value now in milliseconds instead of seconds

### Features

-   adds events when animation for animation playing. ref [#133](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/133) ([8516dad](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8516dad43276fdd984e9bea8f1769a511bf17eb2))
-   **android:** adds fade out preference. ref [#136](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/136) ([9cc1abb](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9cc1abb8c639e0875e4ca7aa499505e0f4558385))
-   **ios:** adds fade out support. closes [#136](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/136) ([9538e8c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9538e8c68b5a10bb078986075530e0bb0ec7fac0))

### Code Refactoring

-   **android:** treat hide timeout in milliseconds ([f0eef88](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f0eef886f42144aa6fd8f8bd9e6d8e4b7445e398))

## [0.8.0-beta.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.8.0-beta.0...v0.8.0-beta.1) (2020-02-03)

### Features

-   remove redundant git add ([c045357](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c045357415080344a18fe9b6462ea1508b7bf1a7))

### Bug Fixes

-   **android:** restores local JSON loading functionality ([720a589](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/720a589b5b9ef891d8878928bb07f8f324f90039))

### Build System

-   **deps:** bumps lottie-ios to 3.1.6 ([14e86c9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/14e86c91cbcb27a6186a5f00f40b32d3fa1bb758))
-   **deps-dev:** bump @commitlint/cli from 8.2.0 to 8.3.3 ([f0f5351](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f0f5351ae638bb98393b56f09ebd54aa1264f40e))
-   **deps-dev:** bump @commitlint/cli from 8.3.3 to 8.3.4 ([18e17c6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/18e17c65ed0400672c77de5ea21c65d5e3e1b917))
-   **deps-dev:** bump @commitlint/cli from 8.3.4 to 8.3.5 ([10502a5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/10502a5aba0a4fee63f2464d791197a64997061f))
-   **deps-dev:** bump @commitlint/config-angular from 8.2.0 to 8.3.0 ([c1a3af9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c1a3af9a8bdf2775f01a66db81421be8d279b549))
-   **deps-dev:** bump @commitlint/config-angular from 8.3.0 to 8.3.4 ([0e08879](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0e08879d32e96918077bd0bef018fbeaf0f4f1d4))
-   **deps-dev:** bump husky from 3.1.0 to 4.0.0 ([c68fe9e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c68fe9e03d6a10817438ed8a52fb356c22080e24))
-   **deps-dev:** bump husky from 3.1.0 to 4.0.0 ([#147](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/147)) ([31a7993](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/31a7993d49797f38bf7d0d4f27a9e008102be32e))
-   **deps-dev:** bump husky from 4.0.0 to 4.0.1 ([dd699b1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dd699b19cfa956ab5aeb34d2b33e1130545409ba))
-   **deps-dev:** bump husky from 4.0.1 to 4.0.3 ([653f318](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/653f3189bda9338293e2c4fd2b4349c86c97b526))
-   **deps-dev:** bump husky from 4.0.10 to 4.2.0 ([9c3c5ee](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9c3c5eeb753c92a20a19d6b7e0bdcc5823e8902e))
-   **deps-dev:** bump husky from 4.0.3 to 4.0.6 ([6216b5a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6216b5a81a2bbf6396e4cecc398d3ca94c852226))
-   **deps-dev:** bump husky from 4.0.6 to 4.0.7 ([1048d8b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1048d8b174f1b13dbea3b457120d6d02e95fafa0))
-   **deps-dev:** bump husky from 4.0.7 to 4.0.9 ([3e82e04](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3e82e04337d5eb26606c978acd4ad69548bb8abf))
-   **deps-dev:** bump husky from 4.0.9 to 4.0.10 ([3662ec4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3662ec460e1049b7ea59af0f1ffb4c42162546da))
-   **deps-dev:** bump husky from 4.2.0 to 4.2.1 ([873398e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/873398ece035ece560440ef212daffc91051ae91))
-   **deps-dev:** bump lint-staged from 10.0.1 to 10.0.2 ([5f60746](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5f60746baa6655f0bfe9d2d3b8e2976da8ce2d60))
-   **deps-dev:** bump lint-staged from 10.0.2 to 10.0.3 ([7b88ae2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7b88ae25bd956123403a87c40dfd50bb59ccdd30))
-   **deps-dev:** bump lint-staged from 10.0.3 to 10.0.4 ([7655dc9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7655dc910861ce368e63f8a891a2c9c1224c3f10))
-   **deps-dev:** bump lint-staged from 10.0.4 to 10.0.5 ([b3db150](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b3db1502ee6a169fa567a55dd791c56d92386b6f))
-   **deps-dev:** bump lint-staged from 10.0.5 to 10.0.7 ([b6b4ae8](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b6b4ae84272ea60dba956eca9efc3682c79773f9))
-   **deps-dev:** bump lint-staged from 9.5.0 to 10.0.1 ([64fa582](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/64fa5829fa2dc78723e28ecd62e8f138e96a8b97))
-   **deps-dev:** bump lint-staged from 9.5.0 to 10.0.1 ([#161](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/161)) ([607aefb](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/607aefb278fad4c120dccb7a12145eb9daa3f348))
-   **deps-dev:** bump replace from 1.1.1 to 1.1.2 ([c0ca5f9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c0ca5f9b53ad7df40c122b8f68071ad2672f4dbe))
-   **deps-dev:** bump replace from 1.1.2 to 1.1.3 ([19f1da1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/19f1da170ea125dfaa09e9158835223f96f2a397))
-   **deps-dev:** bump replace from 1.1.3 to 1.1.5 ([fee5323](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fee53234188bc53c2218a0e94ba77318f9e07449))
-   **deps-dev:** bump standard-version from 7.0.1 to 7.1.0 ([796e482](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/796e482d8906a75ef83f40c25af5acf32be8d5b2))
-   **deps-dev:** bump tslint from 5.20.1 to 6.0.0 ([17c4ea3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/17c4ea3b1fad7c4cde320b9adaab64a8899d569f))
-   **deps-dev:** bump typescript from 3.7.4 to 3.7.5 ([f4d7a47](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f4d7a47dee68aab4cde708d332acb663f7204124))

## [0.8.0-beta.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.7.1...v0.8.0-beta.0) (2019-12-28)

### Features

-   **android:** adds option to disable caching. closes [#139](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/139) ([90a1592](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/90a1592a02cb9472678b8f5fd9ea5884883726c6))
-   **android:** throw error messages when animation is already running. closes [#20](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/20) ([c503f6e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c503f6ecbdce47ef8d8b99f015d2307b93546e3a))
-   updates example ([392ef3a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/392ef3aa3098fd306c847995e87f30abb99374b2)), closes [#135](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/135)

### Bug Fixes

-   **ios:** send command callbacks, closes [#134](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/134) ([13f49b3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/13f49b35ef53e5b52b7a8d3822bd1da35e3a8d06)), closes [#137](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/137)
-   GitHub Action ([f254559](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f254559f1d1131407560d38e30435a07eb44404c))
-   **android:** do not run when activity is finishing. closes [#119](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/119) ([f837cf7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f837cf7581d04ee0d45e9e2f2c9f41b958300e3f))

### Performance Improvements

-   use CocoaPods CDN ([1169e0b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1169e0b05d42c32d63e732caaf7efe6cb825b68d)), closes [#128](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/128)

### Build System

-   **ci:** adds simple smoke tests to add the plugin ([8f5e70c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8f5e70c7af0d52d5df525568fddbeb38e97b7fa9))
-   **ci:** adds simple smoke tests to add the plugin ([#129](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/129)) ([c0be1bc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c0be1bc8584fd763762d046e3870b51baba94d4d))
-   **deps:** upgrade Kotlin dependency to 1.3.61 ([49a903a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/49a903a8c0f2e36766614e6c35ae0e6590be8c3f))
-   **deps:** upgrade lottie-android to 3.2.0 ([4117da1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4117da12f29c722ee8d05da081cb51542d856ee3))
-   **deps:** upgrade lottie-android to 3.3.1 ([3f03a2d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3f03a2d0bfa7596b65e4d8e6331b89c03d3fa91a))
-   **deps-dev:** bump husky from 3.0.9 to 3.1.0 ([26c6050](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/26c6050a8e706497f9c79b4b6968c28ae3f1023d))
-   **deps-dev:** bump lint-staged from 9.4.2 to 9.4.3 ([61c1190](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/61c11901d0133120acf298ef62cbc37c19d141c8))
-   **deps-dev:** bump lint-staged from 9.4.2 to 9.4.3 ([49459d3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/49459d3f76070f7b750e5e49a7cc4fcc1d92d514))
-   **deps-dev:** bump prettier from 1.18.2 to 1.19.1 ([a7f74eb](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a7f74eb140e34a925326cd90bd2b2417d48833f1))
-   **deps-dev:** bump tslint from 5.20.0 to 5.20.1 ([3f2ed23](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3f2ed230bae6506eb5cf002ddfba788f82a20192))
-   **deps-dev:** bump typescript from 3.6.4 to 3.7.2 ([da06585](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/da0658555dc14754cbfb7089050ae11325e0acd7))
-   **deps-dev:** bump typescript from 3.7.3 to 3.7.4 ([37ee77b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/37ee77bf19499dfa0952047ef50e2748d93255e0))
-   re-build lockfile to fix npm audit warning ([e238fd7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e238fd72548634be768b0ab688e089369f7345dc))
-   **deps-dev:** bump lint-staged from 9.4.3 to 9.5.0 ([8ffec36](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8ffec36c11f4134d0d1b1b4cefc529375ebb5dd9))
-   **deps-dev:** bump prettier from 1.18.2 to 1.19.1 ([1a8349e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1a8349e9545772a92daf4a60668c4fdd4041c48a))
-   **deps-dev:** bump standard-version from 7.0.0 to 7.0.1 ([d35f0f9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d35f0f9f98217cf46d9d7367add08eda9623015e))
-   **deps-dev:** bump tslint from 5.20.0 to 5.20.1 ([04d29ae](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/04d29ae137d12cb19e8526d5d798fe6f5ff31f23))
-   re-build lockfile to fix npm audit warning ([4d8aca7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4d8aca79876d8fa90ab740b3f00bfe44fe540faf))
-   refactor lint scripts to include all languages ([238ba0a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/238ba0ac8d333a2794cd2da0d1db22c0b5dfcf66))
-   **deps-dev:** bump typescript from 3.6.4 to 3.7.2 ([236f8ba](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/236f8ba1c72816c964649ea804b9e412e69313bc))
-   ensure plugin.xml gets committed during release ([e3aae68](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e3aae682b101aef7be2ccc5406f6ac88806a18b4))
-   use angular config for changelog ([694336d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/694336d09e252dbd81e5f02e705e449ea8622739))

### [0.7.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.7.0...v0.7.1) (2019-11-04)

### Bug Fixes

-   **android:** ktlint warning ([58e2e4b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/58e2e4b6d7b8b9a3d4aa81237310925ab5fb3ccc))

### Build System

-   re-build lockfiles and drop yarn support ([0ca6503](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/0ca650324fc8882fb13d014fd25db0f41ca8ed85))
-   **CI:** upgrade ktlint to 0.34.2 ([3efbbc2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3efbbc2c77f4f152d44e902e347c41fca537b319))
-   **deps:** update dependencies ([83162c6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/83162c6fb33d55b631fb786239fb267d98015863))
-   **deps:** updates lottie-ios to v3.1.5 ([a6bb834](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a6bb83405d725e1f855ff61a3039cb525f8dd4b0))
-   **deps:** upgrade lottie-ios and lottie-android ([492be7f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/492be7f7d0198cb68f89d14554ee20ef33cdee03))
-   **deps:** upgrade lottie-ios and lottie-android ([#113](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/113)) ([f3ff8b8](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f3ff8b841c1b8d4b57615268c08fcc3a354795ed))
-   **deps-dev:** bump @commitlint/cli from 8.1.0 to 8.2.0 ([5dccee7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5dccee7c00f972b53f81430dd83859da99499b05))
-   **deps-dev:** bump @commitlint/config-angular from 8.1.0 to 8.2.0 ([9efa854](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9efa854dfdc32f65376845b4e60e9677a35cb4ed))
-   **deps-dev:** bump husky from 3.0.2 to 3.0.3 ([b4ba1af](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b4ba1aff55ba6f6e529900ccbda63af27733acd5))
-   **deps-dev:** bump husky from 3.0.2 to 3.0.3 ([#90](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/90)) ([075d6ca](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/075d6caf269df9bf2431759c09f877bfd118ff36))
-   **deps-dev:** bump lint-staged from 9.2.5 to 9.3.0 ([9478cd5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9478cd5f2e8b362571874ad1bf86af324232d8fc))
-   converted main.workflow to Actions V2 yml files ([901cfe7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/901cfe7f911feec3f61691fa9c9dbfb2701f6703))
-   **deps-dev:** bump husky from 3.0.3 to 3.0.4 ([363bd01](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/363bd0148b24bff27d65dec4a4e21a24724a1d1c))
-   **deps-dev:** bump husky from 3.0.4 to 3.0.5 ([722d103](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/722d103813cd82a03c695addecc066eaec3c0e6f))
-   **deps-dev:** bump lint-staged from 9.2.1 to 9.2.3 ([fd32b50](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fd32b507ea1117838e762bac7b35176ab24617a3))
-   **deps-dev:** bump lint-staged from 9.2.3 to 9.2.4 ([76e5e88](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/76e5e88d5f850ccc2bfa4cccb9e869f30d61586a))
-   **deps-dev:** bump lint-staged from 9.2.4 to 9.2.5 ([caf8a85](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/caf8a858b52b3ca92b0c8f95ed5e1ba4caf525d5))
-   **deps-dev:** bump replace from 1.1.0 to 1.1.1 ([6b9ae11](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6b9ae11bbd8d29a6df373f8e3e2682c044a0ef6b))
-   **deps-dev:** bump tslint from 5.18.0 to 5.19.0 ([f03bf6d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f03bf6d487470732b803b5c36215979e51f271c5))
-   **deps-dev:** bump tslint from 5.19.0 to 5.20.0 ([86199d9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/86199d972b425fc35da15e4e92a114a1ec96e8b4))
-   **deps-dev:** bump typescript from 3.5.3 to 3.6.2 ([4c31c79](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4c31c7944ac57a3b7892b8155eb1e364768da1f4))
-   **deps-dev:** bump typescript from 3.6.2 to 3.6.3 ([cb09fc0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/cb09fc0571f7629f39827559c86d77177af30037))
-   **stale:** decrease stale time to 60 days ([44eb384](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/44eb384da4c3f3ac041d9b6b996fe9f71d60331e))

## [0.7.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.7.0-beta.3...v0.7.0) (2019-08-06)

### Build System

-   **deps-dev:** bump husky from 3.0.1 to 3.0.2 ([96f6a5e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/96f6a5eca38599ddbdba3ec20b328edee1540baf))
-   **deps-dev:** bump lint-staged from 9.2.0 to 9.2.1 ([5cd1560](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5cd1560763644a37173c7e9b538cc70c593504e4))
-   **deps-dev:** bump standard-version from 6.0.1 to 7.0.0 ([1ecd46d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1ecd46d91ab810305158b773cd85efdc0fe9b829))
-   **deps-dev:** bump standard-version from 6.0.1 to 7.0.0 ([#87](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/87)) ([ae3e23f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ae3e23fdffa4076b0152acce9f778ece25428e83))
-   **npm:** ignore husky, lint-staged and commitlint files ([97a631c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/97a631cf99002d1c3cf5a52a9b583ad904cd874d))

## [0.7.0-beta.3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.7.0-beta.2...v0.7.0-beta.3) (2019-07-19)

### Build System

-   **deps:** upgrade lottie-ios to 3.1.2 ([3afe110](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3afe1107843db04049bd14e5fb75f625d16ff86e))
-   add commitlint and prettier configs ([475f364](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/475f3643b8ce1467ce7e4be4bc9a714b4be3dd8c))
-   **deps:** [security] bump lodash from 4.17.11 to 4.17.14 ([dc4fb9e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dc4fb9eeec323d62db62c72d5ce90f7a12760496))
-   **deps:** bump lodash.template from 4.4.0 to 4.5.0 ([4a2988b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4a2988be70a4ef808da3ef84c2aacfb07b8b1082))
-   **deps-dev:** bump typescript from 3.5.2 to 3.5.3 ([1e63803](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1e638032b16aff5878f42434f19e297c2051ca62))

## [0.7.0-beta.2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.7.0-beta.1...v0.7.0-beta.2) (2019-07-07)

### Build System

-   **CI:** upgrade ktlint to 0.33.0 ([3ae009a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3ae009a4ea0160bad9c7fcebd5cc2a96fdf0f069))
-   **deps:** update lottie ([bed9016](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bed9016486c7cdf6d0f34cb9acb9afa8cce18e54))
-   **deps:** upgrade Kotlin dependency to 1.3.41 ([af129c7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/af129c7a007db1d204771b59d4914749717f212d))
-   **deps:** upgrade Kotlint dependency to 1.3.31 ([5678515](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/567851541e9f8303adf272d4f73a6b3cd0fc2920))
-   **deps-dev:** bump tslint from 5.17.0 to 5.18.0 ([1493427](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/149342780184b51bbf551f91ee21bbc671a53a39))
-   **deps-dev:** bump TypeScript and TSLint ([8c3b878](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8c3b8785c68f8bd7d5459284930ea9a0a1ddcb85))
-   **deps-dev:** bump typescript from 3.5.1 to 3.5.2 ([eeec686](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/eeec686b74c515a10c46639a5944b01bf0fd25d1))

## [0.7.0-beta.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.7.0-beta.0...v0.7.0-beta.1) (2019-06-10)

### Build System

-   **deps-dev:** bump standard-version from 5.0.2 to 6.0.1 ([09ba249](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/09ba249909cfc5606cf69ce1e092e4e269576f4a))
-   **deps-dev:** bump standard-version from 5.0.2 to 6.0.1 ([#74](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/74)) ([4a3793f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4a3793f6640415811ac424827721899f078a05e0))
-   **deps-dev:** bump tslint from 5.16.0 to 5.17.0 ([99c1a4f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/99c1a4fe85904ae5d0a7d50a90ed4e5fdfdf4d1d))
-   **deps-dev:** bump typescript from 3.4.5 to 3.5.1 ([f747654](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f7476547216983acd21375b028f31e9e8aa45355))

## [0.7.0-beta.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.6.0...v0.7.0-beta.0) (2019-04-23)

### Features

-   updgrade to lottie-android 3.0.0 ([bb8dd2b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bb8dd2b9029c72f5e857044f2af81fb1d04ee1ff))
-   **android:** migrate ColorHelper to AndroidX ([2b8507b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2b8507b748d9c3b50d6aa1ef484d80a983eca58a))
-   **android:** migrate LottieSplashScreen to Androix ([cfec4ed](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/cfec4ed70db24417b36c05141ff380512fee4d63))

### Bug Fixes

-   Kotlin compiler warnings ([7ecfdfc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7ecfdfc6e6488d4a2e877d0c988e25fa94edc1fe))

### Code Refactoring

-   fix swiftlint issues ([3af9f1b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3af9f1bcfeffe29cfd09804af17e73ac4d68f8f5))

## [0.6.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.5.1...v0.6.0) (2019-04-23)

### [0.5.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.6.0-beta.1...v0.5.1) (2019-04-17)

### Bug Fixes

-   upgrade swift support plugin ([3f29902](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3f29902c549f8114cb105c4f7557c450a2b003ad))

### Build System

-   **deps-dev:** bump tslint from 5.15.0 to 5.16.0 ([9396f7a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9396f7a4e7414f550b69623782401099966b95ad))

## [0.6.0-beta.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.5.0...v0.6.0-beta.1) (2019-04-11)

### Features

-   upgrade to lottie-ios v3 ([9fb8f21](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9fb8f21c66f49fcb0eb1748dba3419d2b74f26fc)), closes [#50](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/50) [#62](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/62)

### Bug Fixes

-   do not crash when no animation is loaded ([5d2ec2e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5d2ec2ebf217e4e68e2cbfe428f5127f5716bea5)), closes [#47](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/47)
-   execute install hooks for android always ([a720958](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a720958c3bbb37d3ac67ec65130c9d85c95df5f5)), closes [#43](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/43) [#86](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/86)

### Build System

-   **deps-dev:** bump standard-version from 5.0.0 to 5.0.1 ([7b0ea5f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7b0ea5fafecec26f22da9ec5ebf53fb3a0d095c5))
-   **deps-dev:** bump standard-version from 5.0.1 to 5.0.2 ([bd01e3d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/bd01e3da9efec950dc8ce93b303c131f7f1db5fb))
-   **deps-dev:** bump tslint from 5.12.1 to 5.13.0 ([d764801](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d76480168152b4d2d65f6237bcb8f4c77a21b8c1))
-   **deps-dev:** bump tslint from 5.13.0 to 5.13.1 ([2e79641](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2e79641c3b84594728e645ca64a25963a3c17fd5))
-   **deps-dev:** bump tslint from 5.13.1 to 5.14.0 ([c65efe2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c65efe27e78cc9d0de2b1ae8200c088fc1b3eedb))
-   **deps-dev:** bump tslint from 5.14.0 to 5.15.0 ([6ecd341](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/6ecd3413fdfbc296ca657ebec84a66d36f6b9fd6))
-   **deps-dev:** bump typescript from 3.3.3 to 3.3.3333 ([720a315](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/720a31525780ad9349e594f50bd6a66b5d5c1d14))
-   **deps-dev:** bump typescript from 3.3.3333 to 3.3.4000 ([4476292](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/447629236cc7b0f36fc68daa3a7bbf7fb050398d))
-   **deps-dev:** bump typescript from 3.3.4000 to 3.4.1 ([fad4919](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fad49197729884432cc02613ebddeee31c46e2f8))
-   **deps-dev:** bump typescript from 3.4.1 to 3.4.2 ([b1e6ad5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b1e6ad5276c581bcd91f7eb6d052901cc44952ae))
-   **deps-dev:** bump typescript from 3.4.2 to 3.4.3 ([fdda570](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fdda570960eb43e48653cbc9352624e136e4abf4))

## [0.5.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.4.2...v0.5.0) (2019-02-19)

### Bug Fixes

-   **android:** make sure to run on UI thread ([2d56627](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2d566274fba883ad96f5473781b75032d18fe3ec))

### Build System

-   **deps:** [security] bump handlebars from 4.0.12 to 4.1.0 ([48aa2b5](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/48aa2b5f09e5b8d5ec729d63391422c77909e5cd))
-   **deps-dev:** bump standard-version from 4.4.0 to 5.0.0 ([e112a2e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e112a2e10084f9b055bdc64c13b94092b57b5b3c))
-   **deps-dev:** bump typescript from 3.2.4 to 3.3.1 ([c1b4060](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c1b4060e82a884975993a9931a6a8e333c51588c))
-   **deps-dev:** bump typescript from 3.3.1 to 3.3.3 ([ce3c5f0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ce3c5f090638c53f7de6b157c7bc6a9ec0260472))

### [0.4.2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.4.1...v0.4.2) (2019-01-28)

### Bug Fixes

-   **ios:** restore parent container, set z-index = 1 ([2b3f436](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2b3f4365d71e6a93e2fbf26b68c26794c3b64e50))

### [0.4.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.4.0...v0.4.1) (2019-01-23)

### Bug Fixes

-   **ios:** correctly generate auto resizing mask ([ab1b8ff](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ab1b8ff833e8563bce13219eb5ea2bfbaa29d896))

## [0.4.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.3.0...v0.4.0) (2019-01-21)

### Features

-   **android:** add scale type config setting ([5462bd0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/5462bd040a761867bce7bf95a6174ecb4c0f1e62))

## [0.3.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.2.0...v0.3.0) (2019-01-21)

## [0.2.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.1.3...v0.2.0) (2019-01-21)

### Features

-   add relative size and fullscreen support ([4027f6c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4027f6c18e2b10d89fa03855011194163ac5abac))
-   **android:** allow folder of images and hardware acceleration to be configured ([8b26e95](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8b26e95b9dce23b8386dd8e04ab14c008eade86f))
-   add configuration of looping value ([a2574c7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/a2574c71f5fa18f331324400f5068d5d71cd6aa1))
-   android support ([da3937b](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/da3937b4d6a801cc6bad1468fc6d130a89da3406))

### Bug Fixes

-   **android:** correctly enable hardware acceleration and merge paths ([008a0cc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/008a0cc465292eb681f3d1e9defaf8a9eec3eab5))
-   **ios:** always install pods ([059acd4](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/059acd47fb297399a62bbc1beaf7f69ed81216a1))
-   **ios:** always install pods after after_plugin_install ([e030b48](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e030b482f5726f4ce61090c742dc3f2d260c8b9d))
-   **ios:** installation via Ionic Appflow ([63bb7fa](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/63bb7fa6991d1e38e09fc20e8202342e0a19ddc0))
-   **ios:** installation via plugin add only ([74460be](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/74460beb0af429d34a479147c25a69b7c5653c9f))
-   **ios:** plugin name ([615cfde](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/615cfdee7599e5c359ef222f2e073e58b8ce60cf))
-   add missing keywords to plugin.xml ([f228a0e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/f228a0ec08210f451889f9a9d89762b6daa2d4b8)), closes [#30](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/30)
-   add use_frameworks! only once, allow show() without any arguments ([c49c3d1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c49c3d1cc6a927077435c77eaa2271c1ea87692f))
-   **ios:** naming of fix_code_sign_entitlements ([1c18591](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/1c185912e84222ae11f964a40dc09ab6ea125d6e))
-   add missing android references ([e2599dc](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e2599dc4796290f29db682a144a34a9cee2b041f))
-   downgrade lottie-android to 2.7.0 ([937bfe1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/937bfe14cdf30dd3191548a8a2b86a02f0f41f3c))
-   rename AutoHideSplashScreen to LottieAutoHideSplashScreen ([705c49a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/705c49ad5a878550788be001efdbd21617add594))
-   rename LottieSplashscreen.kt to LottieSplashScreen.kt ([34e405a](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/34e405aa860200260a27165f9d5b4a14e09d7cbd))
-   typo ([e434190](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e4341906a54396c3f7486b93c1954c1aa597dceb))

### Code Refactoring

-   **android:** add error handling and late init ([d3c4136](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d3c4136eab59e8ee0cc65c12a58951e1285b8229))

### Build System

-   **deps-dev:** bump tslint from 5.11.0 to 5.12.0 ([9dba157](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9dba1579a62e6867a7bfd414115c4af7d3a9b906))
-   **deps-dev:** bump tslint from 5.12.0 to 5.12.1 ([285038c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/285038cdc97ba991d87da268110e658a4e1b12cb))
-   **deps-dev:** bump typescript from 3.1.3 to 3.1.4 ([c60dd9c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c60dd9c7222117ef27fe030a8fff02349e37b140))
-   **deps-dev:** bump typescript from 3.1.4 to 3.1.5 ([eccb4b9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/eccb4b9b16abf0c4cd9ebfddd218856923090dc6))
-   **deps-dev:** bump typescript from 3.1.5 to 3.1.6 ([d1cc3c9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/d1cc3c9ad9e980105be7a2d5ec68e1ab002d68e0))
-   **deps-dev:** bump typescript from 3.1.6 to 3.2.1 ([05624c6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/05624c62634a7752201e8aaf37a1c232927e4463))
-   **deps-dev:** bump typescript from 3.2.1 to 3.2.2 ([4d667b9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4d667b9ec99e4eabf6262f5ce629c54f6e50912a))
-   **deps-dev:** bump typescript from 3.2.2 to 3.2.4 ([dff94f9](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/dff94f9ee462ac1c8dc8c8e789b46423b2b6942b))
-   **TravisCI:** update to Xcode 10 image ([2634e1c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/2634e1c4996aa9cd5ca54f648385f57d853d50ce))

### [0.1.3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.1.2...v0.1.3) (2018-10-23)

### Bug Fixes

-   change hooks to ES5, make file executable ([99caac1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/99caac1b637532874f34917eb3b180b4d01bd1b6))
-   increase line-length limit to 140 chars ([9ec2c36](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/9ec2c3686c1d36f0f30274513cc0633642d4074c))

### Build System

-   **deps-dev:** bump standard-version from 4.3.0 to 4.4.0 ([8195837](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8195837ce86f1d52583bd96daa0b0d353d4b2e1c))
-   **deps-dev:** bump tslint from 5.9.1 to 5.11.0 ([45ebe2c](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/45ebe2c5e8194cc74efce631860bea060279908d))
-   **TravisCI:** lint TypeScript files, too ([501bf5e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/501bf5ea919fb720b7bbafa30e713af5cee84112))
-   **TravisCI:** use Xcode 9.4 ([fe78970](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/fe78970f811476a147d8cfb1c7df6100b167678e))

### [0.1.2](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.1.1...v0.1.2) (2018-04-04)

### [0.1.1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/v0.1.0...v0.1.1) (2018-02-20)

### Bug Fixes

-   add missing [@objc](https://github.com/objc) annotation. ([ea69f51](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/ea69f51ff58744b5543f1226c0538dabaf0ccd94)), closes [#18](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/18)

### Code Refactoring

-   rename LottieSplashscreen to LottieSplashScreen ([c03ce41](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/c03ce4159b2c2b88ff99ace9d63a1f987391ea3c))

## [0.1.0](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/compare/4750bfd812adce3ae6251e796be185a2595d34bf...v0.1.0) (2018-01-21)

### Features

-   add autoHide settings toggle ([e55e29e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/e55e29e39154f639a9a675b329b48fc394ab7aff))
-   add background color preference, closes [#10](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/10) ([8aed653](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/8aed6538827c7ecd41ff48b5cc570bfa14e6df40))
-   add hide timeout, closes [#6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/6) ([346d71e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/346d71ea514ac95e4f1722b34d591b0b251fb5bc))
-   allow installation from git ([97d039f](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/97d039fe973d99fe23eb4f1d8926f49e12947a3f))
-   hide/cancel animation on tap, closes [#7](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/7) ([34f8627](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/34f86272c1565d0ced55741cf9921e41803478b0))
-   initial commit ([4750bfd](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/4750bfd812adce3ae6251e796be185a2595d34bf))
-   make animation location configurable. closes [#3](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/3) ([18dda27](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/18dda2780228c0b46f4f583d5045e4572442c154))
-   programmatically pass in file location ([233a27d](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/233a27d8d0e58b9292530df9600b5386dab17d78))

### Bug Fixes

-   add missing method ([7fd8649](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/7fd8649f9ae32606ce3010c54b32a1fa5fc39905))
-   center when inital lauching ([222661e](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/222661eb8e78bb99322014ca63d226c8ff8fc5d5))
-   correctly center when device rotated ([3a76cce](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/3a76cced3618d4e0e07ee430fbab2390dc85ecd6))
-   disable code-signing-entitlements to fix building. closes [#14](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/issues/14) ([26e1f66](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/26e1f66d2d0b44b0c4a5693b38df9b42e8b283bb))
-   Int/Double reading from config ([eb48e94](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/eb48e94385be6cf8bef5ea70f126aefea2aedc1b))
-   uppercase background color ([20b04d1](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/20b04d18037d48721520dc41399361f0baa856ac))
-   whitespace ([b5a4697](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/b5a4697b8dd6928866d96d3018f06888db634898))

### Code Refactoring

-   convert to TypeScript ([62b35e6](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/commit/62b35e6e801b8bf3dd7a09f5df2c0f2ead023f46))
