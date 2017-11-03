Pod::Spec.new do |s|
    s.name              = 'RNMobileCenter'
    s.version           = '0.11.2'
  
    s.summary           = 'Mobile Center is mission control for mobile apps. Get faster release cycles, higher-quality apps, and the insights to build what users want.'
    s.description       = <<-DESC
                        Mobile Center is mission control for mobile apps.
                        Get faster release cycles, higher-quality apps, and the insights to build what users want.
                        The Mobile Center SDK uses a modular architecture so you can use any or all of the following services: 
                        1. Mobile Center Analytics:
                        Mobile Center Analytics helps you understand user behavior and customer engagement to improve your app. The SDK automatically captures session count, device properties like model, OS version, etc. You can define your own custom events to measure things that matter to you. All the information captured is available in the Mobile Center portal for you to analyze the data.
                        2. Mobile Center Crashes:
                        Mobile Center Distribute will let your users install a new version of the app when you distribute it via the Mobile Center. With a new version of the app available, the SDK will present an update dialog to the users to either download or postpone the new version. Once they choose to update, the SDK will start to update your application. This feature will NOT work if your app is deployed to the app store.
                        3. Mobile Center Distribute:
                        Mobile Center Distribute provides the capability to display in-app updates to your app users when a new version of the application is released.
                        4. Mobile Center Push:
                        Mobile Center Push enables you to send push notifications to users of your app from the Mobile Center portal. You can also segment your user base based on a set of properties and send them targeted notifications.
                          DESC
  
    s.homepage          = 'https://mobile.azure.com'
    s.documentation_url = "https://docs.mobile.azure.com/sdk/ios/"
  
    s.license           = { :type => 'MIT',  :file => 'MobileCenter-SDK-Apple/LICENSE'}
    s.author            = { 'Microsoft' => 'mobilecentersdk@microsoft.com' }
  
    s.platform          = :ios, '8.0'
    s.source = { :http => "https://github.com/Microsoft/mobile-center-sdk-react-native" }
  
    # s.preserve_path = "MobileCenter-SDK-Apple/LICENSE"
  
    s.default_subspecs = 'Analytics', 'Crashes'

    s.subspec 'Core' do |ss|
      ss.source_files = 'mobile-center/ios/RNMobileCenter/*.{h,m}'
      ss.dependency 'React'
      ss.vendored_frameworks='RNMobileCenterShared/Products/RNMobileCenterShared/RNMobileCenterShared.framework', 'RNMobileCenterShared/ios/MobileCenter.framework'
    end
  
#    s.subspec 'Analytics' do |ss|
#       ss.frameworks = 'Foundation', 'UIKit'
#       ss.dependency 'MobileCenter/Core'
#       ss.vendored_frameworks = "MobileCenter-SDK-Apple/iOS/MobileCenterAnalytics.framework"
#     end
  
    s.subspec 'Crashes' do |ss|
      ss.source_files = 'mobile-center-crashes/ios/RNCrashes/*.{h,m}'
      ss.dependency 'RNMobileCenter/Core'
      ss.dependency 'React'
      ss.vendored_frameworks='mobile-center-crashes/ios/MobileCenterCrashes.framework'
    end
  
#    s.subspec 'Push' do |ss|
#       ss.frameworks = 'Foundation', 'UIKit'
#       ss.weak_frameworks = 'UserNotifications'
#       ss.dependency 'MobileCenter/Core'
#       ss.vendored_frameworks = "MobileCenter-SDK-Apple/iOS/MobileCenterPush.framework"
#    end
  
  end