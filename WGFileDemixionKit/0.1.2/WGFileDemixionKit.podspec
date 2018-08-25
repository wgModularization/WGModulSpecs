#
# Be sure to run `pod lib lint WGFileDemixionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WGFileDemixionKit'
  s.version          = '0.1.2'
  s.summary          = '目录分层2次'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wgModularization/WGFileDemixionKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanggang1128' => '978159546@qq.com' }
  s.source           = { :git => 'https://github.com/wgModularization/WGFileDemixionKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'WGFileDemixionKit/Classes/**/*'
  
  s.source_files = 'WGFileDemixionKit/Classes/*'
  s.public_header_files = 'WGFileDemixionKit/Classes/HuCommonUIHeader.h'
  s.prefix_header_contents = '#import <HuConfigsKit/HuConfigsHeader.h>','#import <HuCategoryKit/HuCategoryHead.h>','#import <HuUtilsKit/HuUtilsHeader.h>'
  
  #-----------------文件分级---------------------#
  s.subspec 'Base64' do |ss|
      ss.source_files = 'WGFileDemixionKit/Classes/Base64/*'
  end
  
  s.subspec 'MD5' do |ss|
      ss.source_files = 'WGFileDemixionKit/Classes/MD5/*'
      ss.subspec 'hutest' do |sss|
          sss.source_files = 'WGFileDemixionKit/Classes/MD5/hutest/*'
      end
  end
  
  s.subspec 'YYCache' do |ss|
      ss.source_files = 'WGFileDemixionKit/Classes/YYCache/*'
  end
  
  #-----------------文件分级---------------------#
  
  s.dependency 'HuConfigsKit'
  s.dependency 'HuCategoryKit'
  s.dependency 'HuUtilsKit'
  s.dependency 'MJRefresh', '~> 3.1.15'
end
