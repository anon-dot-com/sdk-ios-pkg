Pod::Spec.new do |s|
  s.name                = 'AnonKit'
  s.version             = '0.3.6'
  s.summary             = 'The Integration Platform for the AI Internet.'
  s.description         = 'The toolkit to build user-permissioned integrations for sites without APIs.'
  s.homepage            = 'https://anon.com'
  s.license             = { :type => 'MIT', :file => './LICENSE.md' }
  s.author              = { 'Anonymity Labs' => 'dev@team.anon.com' }
  s.platforms           = { :ios => '16.0' }
  s.swift_version       = ['5.9', '5.10']
  s.source              = { :http => 'https://dl.cloudsmith.io/bFQP6zY5UO2hAJGx/anon/anon-sdk/raw/names/AnonKit.xcframework/versions/0.3.6/AnonKit.xcframework.zip' }
  s.vendored_frameworks = 'AnonKit.xcframework'

  s.dependency 'JWTDecode', '~> 3.1'
end
