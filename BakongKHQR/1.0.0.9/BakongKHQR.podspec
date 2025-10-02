#
# Be sure to run `pod lib lint BakongKHQR.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'BakongKHQR'
s.version          = '1.0.0.9'
s.summary          = 'Private cocoapod for Bakong KHQR provided by nbc'


s.description      = <<-DESC
TODO: This library provided the standard KHQR. It's developer and maintenance under National Bank of Cambodia.
DESC

s.homepage         = 'https://gitlab.nbc.org.kh/khqr/sdk-ios.git'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Sambo' => 'samboseth168@nbc.org.kh' }
s.source           = { :git => 'https://gitlab.nbc.org.kh/khqr/sdk-ios.git', :tag => s.version.to_s }

s.ios.deployment_target = '11.0'

s.source_files = 'BakongKHQR/Classes/**/*'
s.public_header_files = 'BakongKHQR/Classes/Public/**/*.h'
s.private_header_files = 'BakongKHQR/Classes/Private/**/*.h'

end

