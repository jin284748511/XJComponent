#
# Be sure to run `pod lib lint XJComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XJComponent'
  s.version          = '0.1.0'
  s.summary          = 'xiao_xiao_jin'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'the init component'

  s.homepage         = 'https://github.com/jin284748511/XJComponent'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jin284748511' => '507626758@qq.com' }
  s.source           = { :git => 'https://github.com/jin284748511/XJComponent.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  
  
  s.source_files = 'XJComponent/Classes/**/*.swift'
  
  s.requires_arc = true
  
  # s.resource_bundles = {
  #   'XJComponent' => ['XJComponent/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
