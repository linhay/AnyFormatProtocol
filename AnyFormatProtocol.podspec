Pod::Spec.new do |s|
s.name    = 'AnyFormatProtocol'
s.version = '0.5.2'
s.license = 'MIT'
s.summary = '格式化 any? 类型'

s.homepage  = 'https://github.com/linhay/AnyFormatProtocol'
s.author    = { 'linger' => 'linhan.linhey@outlook.com' }
s.source    = { :git => 'https://github.com/linhay/AnyFormatProtocol.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'
s.tvos.deployment_target = '9.0'
s.osx.deployment_target = '10.10'
s.watchos.deployment_target = '2.0'

s.public_header_files = ['Sources/AnyFormatProtocol.h']
s.source_files = ['Sources/*/**','Sources/*/*/**','Sources/**']

s.osx.exclude_files = ['Sources/AnyFormatProtocol+UIKit.swift']
s.watchos.exclude_files = ['Sources/AnyFormatProtocol+UIKit.swift']
s.tvos.exclude_files = ['Sources/AnyFormatProtocol+UIKit.swift']

s.requires_arc = true
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
