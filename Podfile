# Uncomment the next line to define a global platform for your project
#platform :ios, '13.0'

target 'Gintuemojir' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Gintuemojir

pod 'SnapKit'
pod 'IQKeyboardManager'
pod 'SwiftyStoreKit'
pod 'Alamofire'
#pod 'SVProgressHUD'
#pod 'BMPlayer/CacheSupport'
pod 'TagListView'
#pod "Player"
#pod "Player", "~> 0.13.2"
pod 'ZFPlayer', '~> 4.0'
pod 'ZFPlayer/AVPlayer'
pod 'ZFPlayer/ControlView', '~> 4.0'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      # 设置所有 Pods 的最低 iOS 部署版本
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'

      # 设置 Swift 版本
      config.build_settings['SWIFT_VERSION'] = '5.0'

      # 统一设置 Swift 优化级别为 -Onone
      config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
    end
  end
end


