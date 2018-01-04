Pod::Spec.new do |s|
s.name             = 'AnyFormatProtocol'
s.version          = '0.5.0'
s.summary          = '格式化 any? 类型'

s.homepage         = 'https://github.com/bigL055/AnyFormatProtocol'
s.license          = { :type => 'Apache License 2.0', :file => 'LICENSE' }
s.author           = { 'linger' => 'linhan.bigl055@outlook.com' }
s.source = { :git => 'https://github.com/bigL055/AnyFormatProtocol.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'
s.source_files = ["Sources/*/**","Sources/*/*/**","Sources/**"]
s.public_header_files = ["Sources/AnyFormatProtocol.h"]
s.frameworks = ['Foundation']
s.requires_arc = true
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
