#
# Be sure to run `pod lib lint AlamofireImageKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# AlamofireImageKit Version - 0.1.0

Pod::Spec.new do |s|
  s.name             = 'AlamofireImageKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AlamofireImageKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A short description of AlamofireImageKit
                       DESC

  s.homepage         = 'https://github.com/arzrasel/AlamofireImageKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Md. Rashed - Uz - Zaman (Rz Rasel)' => 'rashedgit@gmail.com' }
  s.source           = { :git => 'https://github.com/arzrasel/AlamofireImageKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

#  s.ios.deployment_target = '9.0'
#
#  s.source_files = 'AlamofireImageKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AlamofireImageKit' => ['AlamofireImageKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.ios.deployment_target = '11.0'

  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
      'ios': '11.0'
  }
  s.dependency 'AlamofireImage'
end
