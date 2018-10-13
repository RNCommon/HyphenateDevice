Pod::Spec.new do |s|
  s.name = "HyphenateDevice"
  s.version = "3.5.1"
  s.summary = "An Objective-C client for IM service"
  s.description = "Hyphenate is a cloud-based PaaS (Platform as a Service) for Mobile Instant Messaging (MIM). We provide in-app messaging features such as one-to-one chat, group chat, voice message, picture/video/file sharing, location sharing, real-time voice/video calling, etc."
  s.homepage = "http://www.easemob.com/"
  s.license = {
    :type => "Copyright",
    :text => "Hyphenate Inc. 2017"
  }
  s.authors = { "Hyphenate Inc." => "sdk@easemob.com" }
  s.source = { :http => "https://raw.githubusercontent.com/RNCommon/HyphenateDevice/zip/iOS_Pods_IMDeviceSDK_V3.5.1.zip" }
  s.platform = :ios, "8.0"
  s.requires_arc = true
  s.preserve_paths = "iOS_Pods_IMDeviceSDK_V3.5.1/Hyphenate.framework"
  s.vendored_frameworks = "iOS_Pods_IMDeviceSDK_V3.5.1/Hyphenate.framework"
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
end