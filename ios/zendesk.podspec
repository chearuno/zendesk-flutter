#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'zendesk'
  s.version          = '1.0.0'
  s.summary          = 'Flutter interface for Zendesk Mobile SDK'
  s.description      = <<-DESC
Flutter interface for Zendesk Mobile SDK
                       DESC
  s.homepage         = 'https://github.com/chearuno/zendesk-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Chethana Arunodh' => 'chethana@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'ZendeskChatSDK'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  
  s.ios.deployment_target = '10.0'
end

