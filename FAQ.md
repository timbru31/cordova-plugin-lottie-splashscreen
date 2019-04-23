### Question (Hook failed with error code 127)

The following error message appeared:

```sh
➜ cordova plugin add cordova-plugin-lottie-splashscreen
Installing "cordova-plugin-lottie-splashscreen" for ios
Running command: /Users/timbru31/work/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh /Users/timbru31/work/hello
/Users/timbru/work/ume/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh: line 2: pod: command not found
/Users/timbru/work/ume/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh: line 3: pod: command not found
Failed to install 'cordova-plugin-lottie-splashscreen': Error: Hook failed with error code 127: /Users/timbru31/work/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh
    at /usr/local/lib/node_modules/cordova/node_modules/cordova-lib/src/hooks/HooksRunner.js:224:23
    at _rejected (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:864:24)
    at /usr/local/lib/node_modules/cordova/node_modules/q/q.js:890:30
    at Promise.when (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:1142:31)
    at Promise.promise.promiseDispatch (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:808:41)
    at /usr/local/lib/node_modules/cordova/node_modules/q/q.js:624:44
    at runSingle (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:137:13)
    at flush (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:125:13)
    at processTicksAndRejections (internal/process/task_queues.js:79:9)
Hook failed with error code 127: /Users/timbru31/work/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh
```

### Answer

It seems that the `pod` gem ins not installed. Fix it with:

```sh
$ sudo gem install cocoapods
$ pod setup
$ cordova plugin add cordova-plugin-lottie-splashscreen
```
