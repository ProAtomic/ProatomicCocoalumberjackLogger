#
# Be sure to run `pod lib lint ProatomicCocoalumberjackLogger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProatomicCocoalumberjackLogger'
  s.version          = '0.1.0'
  s.summary          = 'ProatomicCocoalumberjackLogger offers a class to define some common loggers'
  s.description      = 'ProatomicCocoalumberjackLogger offers a class to define some common loggers and private API'

  s.homepage         = 'https://proatomicdev.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '942v' => 'gsaenz@proatomicdev.com' }
  s.source           = { :git => 'https://bitbucket.org/proatomic/proatomiccocoalumberjacklogger.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'

  s.source_files = 'ProatomicCocoalumberjackLogger/Classes/**/*'
  #s.public_header_files = 'ProatomicCocoalumberjackLogger/Classes/**/*.h'
  s.dependency 'CocoaLumberjack'
end
