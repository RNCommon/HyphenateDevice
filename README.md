# HyphenateDeploy

这是环信的iOS SDK，经过lipo处理后的，专用于armv7和arm64真机打包的Pod库。

环信官网：[http://docs.easemob.com/](http://docs.easemob.com/)

更新流程：

* 查看最新的Hyphenate.podspec：`pod spec cat Hyphenate`。
* 在Hyphenate的podspec文件中，找到source，下载zip包。
* 解压缩后，运行如下命令：
    * `mv iOS_Pods_IMFullSDK_VX.X.X iOS_Pods_IMDeploySDK_VX.X.X`
    * `cd iOS_Pods_IMDeploySDK_VX.X.X`
    * `lipo Hyphenate.framework/Hyphenate -thin armv7 -output Hyphenate_armv7`
    * `lipo Hyphenate.framework/Hyphenate -thin arm64 -output Hyphenate_arm64`
    * `lipo -create Hyphenate_armv7 Hyphenate_arm64 -output Hyphenate`
    * `mv Hyphenate Hyphenate.framework/`
    * `rm -f Hyphenate_arm*`
* 重新压缩成`iOS_Pods_IMDeploySDK_VX.X.X.zip`。
* 切换本地到zip分支，替换该分支原有的zip文件，然后`git push -f origin zip`强行推送到Github上。
* 切换本地到master分支，更新podspec文件，包括其中的主版本号，和source下载链接版本号，与Hyphenate.podspec的版本号保持一致。
* `git push origin master`推送到Github上。
