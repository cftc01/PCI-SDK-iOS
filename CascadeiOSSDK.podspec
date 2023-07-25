Pod::Spec.new do |spec|
  spec.name               = "CascadeiOSSDK"
  spec.version            = "1.0.4"
  spec.summary            = "CascadeiOSSDK"
  spec.description        = "PCI SDK xcFramework"
  spec.homepage           = "https://github.com/cftc01/PCI-SDK-iOS"
  spec.documentation_url  = "https://github.com/cftc01/PCI-SDK-iOS"
  spec.license            = { :type => "MIT" }
  spec.author             = { "Cascade Financial Technology" => "qa@cascadefintech.com" }
  spec.source             = { :git => 'https://github.com/cftc01/PCI-SDK-iOS', :tag => "#{1.0.4}" }
  spec.swift_version      = "5.3"

  # Supported deployment targets
  spec.ios.deployment_target  = "15.4"

  # Published binaries
  vendored_frameworks = "CascadeiOSSDK.xcframework"
end