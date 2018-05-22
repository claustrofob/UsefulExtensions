#
# Be sure to run `pod lib lint UsefulExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UsefulExtensions'
  s.version          = '0.2.0'
  s.summary          = 'Swift extensions'

  s.description      = <<-DESC
A set of swift extensions for use in any project
                       DESC

  s.homepage         = 'https://github.com/claustrofob/UsefulExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'claustrofob' => 'claus@zlog.ru' }
  s.source           = { :git => 'https://github.com/claustrofob/UsefulExtensions.git', :tag => s.version }

  s.ios.deployment_target = '9.0'

  s.source_files = 'UsefulExtensions/Classes/**/*'
  
  s.frameworks = 'UIKit'
  s.swift_version = '4.0'
end
