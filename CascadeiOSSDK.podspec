Pod::Spec.new do |spec|
  spec.name               = "CascadeiOSSDK"
  spec.version            = "1.0.4"
  spec.summary            = "CascadeiOSSDK"
  spec.description        = "PCI SDK xcFramework"
  spec.homepage           = "https://github.com/cftc01/PCI-SDK-iOS"
  spec.documentation_url  = "https://github.com/cftc01/PCI-SDK-iOS"
  spec.license            = { :type => "MIT" }
  spec.author             = { "Cascade Financial Technology" => "qa@cascadefintech.com" }
  spec.source             = { :http => 'https://github.com/cftc01/PCI-SDK-iOS/raw/master/CascadeiOSSDKxcframework-v1.0.4.zip' }
  spec.swift_version      = "5.3"
  spec.platform           = :ios
  spec.ios.vendored_frameworks = "CascadeiOSSDK.xcframework"

  # Supported deployment targets
  spec.ios.deployment_target  = "15.4"
end
