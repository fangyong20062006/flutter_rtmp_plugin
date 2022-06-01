#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_rtmp_player.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_rtmp_player'
  s.version          = '0.0.1'
  s.summary          = '一个flutter拉流播放器'
  s.description      = <<-DESC
一个flutter拉流播放器
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'
  s.dependency 'PLPlayerKit'
  s.dependency 'SwiftyJSON'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end