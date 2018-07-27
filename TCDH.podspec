Pod::Spec.new do |s|
  s.name         = 'TCDH'
  s.version      = '0.0.1-dh'
  s.summary      = 'Core Ethereum data structures and algorithms.'
  s.homepage     = 'https://github.com/DahanHu/trust-core'
  s.license      = 'MIT'
  s.authors      = { 'DahanHu' => '849565897@qq.com' }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'

  s.source       = { git: 'https://github.com/DahanHu/trust-core.git', branch: 'tcdh', tag: s.version.to_s }
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.public_header_files = 'Sources/TrustCore.h', 'Sources/Crypto.h'

  s.dependency 'BigInt'
  s.dependency 'TrezorCrypto', '~> 0.0.6'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
