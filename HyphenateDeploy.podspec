Pod::Spec.new do |s|
  s.name = "HyphenateDeploy"
  s.version = "3.5.1"
  s.summary = "环信iOS SDK，用于真机打包"
  s.description = "环信IM的iOS SDK中，其framework文件经过lipo处理后，专用于armv7和arm64平台的真机打包的库。"
  s.homepage = "https://github.com/gaoxiaosong/HyphenateDeploy"
  s.license = {
    :type => "Copyright",
    :text => "Hyphenate Inc. 2017"
  }
  s.authors = { "Xiaosong Gao" => "gaoxiaosong06@gmail.com" }
  s.source = { :http => "https://raw.githubusercontent.com/gaoxiaosong/HyphenateDeploy/zip/iOS_Pods_IMDeploySDK_V3.5.1.zip" }
  s.platform = :ios, "8.0"
  s.requires_arc = true
  s.preserve_paths = "iOS_Pods_IMDeploySDK_V3.5.1/Hyphenate.framework"
  s.vendored_frameworks = "iOS_Pods_IMDeploySDK_V3.5.1/Hyphenate.framework"
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
end
