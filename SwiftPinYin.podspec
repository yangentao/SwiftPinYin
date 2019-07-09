#
# Be sure to run `pod lib lint SwiftPinYin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftPinYin'
  s.version          = '1.0.2'
  s.summary          = '用swif写的查询汉字拼音的库.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
可以查两万个汉字的拼音, 包含多音字和音调.
                       DESC

  s.homepage         = 'https://github.com/yangentao/SwiftPinYin'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangentao' => 'entaoyang@163.com' }
  s.source           = { :git => 'https://github.com/yangentao/SwiftPinYin.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_versions = ["5.0"]

  s.source_files = 'SwiftPinYin/Classes/**/*'
  
  s.resources = ['SwiftPinYin/Assets/*.data']
  #s.resource_bundles = {
  #  'SwiftPinYin' => ['SwiftPinYin/Assets/*.data']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #s.frameworks = 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
