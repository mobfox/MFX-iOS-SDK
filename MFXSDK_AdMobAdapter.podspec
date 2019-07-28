#
# Be sure to run `pod lib lint MobFoxSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MFXSDK_AdMobAdapter"
  s.version          = "4.0.0"
  s.summary          = "MobFox's iOS SDK"

wd = "Working Dir: %s" % [Dir.pwd]

puts wd
  
#puts ENV #$(PODS_ROOT)

#puts ENV['PODS_ROOT']

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "MobFox's iOS SDK Used To Get Ads From The MobFox SSP"

  s.homepage         = "https://www.mobfox.com/"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "MobFox" => "ofir.ka@mobfox.com"  }

  s.source           = { :git => 'https://github.com/mobfox/MFX-iOS-SDK.git', :tag => "#{s.version}" }
  #s.source           = { :git => 'https://github.com/mobfox/MobFox-iOS-SDK.git', :commit => 'master' }

  #s.source           = { :git => 'https://github.com/mobfox/MobFox-iOS-SDK.git', :commit => 'dev' }



  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  puts   s.source


  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.requires_arc = true

  s.source_files = 'MFXSDKCore.embeddedframework/MFXSDKCore.framework/Headers/*.h','MATMoatMobileAppKit.framework/Headers/*.h'
  s.ios.libraries = 'z'

  s.ios.source_files = 'Adapters/AdMob/**/*.{h,m}'
  # s.source_files = 'Adapters/AdMob/**/*.{h,m}'


  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  s.frameworks = 'MFXSDKCore', 'MATMoatMobileAppKit', 'AdSupport'

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' =>  'MFXSDKCore/**'  }


   s.public_header_files = 'MATMoatMobileAppKit.framework/Headers/*.h','MFXSDKCore.embeddedframework/MFXSDKCore.framework/Headers/*.h'
   s.vendored_frameworks = 'MATMoatMobileAppKit.framework','MFXSDKCore.embeddedframework/MFXSDKCore.framework'
   s.preserve_paths = 'MATMoatMobileAppKit.framework','MFXSDKCore.embeddedframework/MFXSDKCore.framework'
  # s.ios.frameworks = 'CoreData', 'SystemConfiguration'





  s.dependency 'Google-Mobile-Ads-SDK', '= 7.40.0'
  #s.dependency 'mopub-ios-sdk', '5.0'
end