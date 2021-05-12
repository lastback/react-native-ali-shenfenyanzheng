
Pod::Spec.new do |s|
  s.name         = "RNAliShenfenyanzheng"
  s.version      = "1.0.0"
  s.summary      = "RNAliShenfenyanzheng"
  s.description  = <<-DESC
                  RNAliShenfenyanzheng
                   DESC
  s.homepage     = "https://github.com/lastback/react-native-ali-shenfenyanzheng/tree/master"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "nick.kai.lee" => "nick.kai.lee@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/lastback/react-native-ali-shenfenyanzheng/tree/master.git", :tag => "master" }
  s.resources =  ["libs/AlipayVerifySDK.framework/AlipayVerifySDK.bundle", "libs/APBToygerFacade.framework/APBToygerFacade.bundle", "libs/ToygerService.framework/ToygerService.bundle", "libs/BioAuthEngine.framework/BioAuthEngine.bundle", "libs/OCRDetectSDKForTech.framework/OCRXMedia.bundle"]
  s.vendored_frameworks = "ios/libs/*.framework"
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  