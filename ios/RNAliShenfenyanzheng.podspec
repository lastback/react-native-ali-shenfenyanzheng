
Pod::Spec.new do |s|
  s.name         = "RNAliShenfenyanzheng"
  s.version      = "1.0.0"
  s.summary      = "RNAliShenfenyanzheng"
  s.description  = <<-DESC
                  RNAliShenfenyanzheng
                   DESC
  s.homepage     = "https://github.com/yoonzm/react-native-ali-shenfenyanzheng"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNAliShenfenyanzheng.git", :tag => "master" }
  s.resources =  ["libs/AlipayVerifySDK.framework/AlipayVerifySDK.bundle", "libs/APBToygerFacade.framework/APBToygerFacade.bundle", "libs/ToygerService.framework/ToygerService.bundle", "libs/BioAuthEngine.framework/BioAuthEngine.bundle", "libs/OCRDetectSDKForTech.framework/OCRXMedia.bundle"]
  s.vendored_frameworks = "libs/*.framework"
  s.source_files  = "*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  