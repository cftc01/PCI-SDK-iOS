Pod::Spec.new do |spec|
  spec.name               = "CascadeiOSSDK"
  spec.version            = "1.0.4"
  spec.summary            = "CascadeiOSSDK"
  spec.description        = "PCI SDK xcFramework"
  spec.homepage           = "https://github.com/cftc01/PCI-SDK-iOS"
  spec.documentation_url  = "https://github.com/cftc01/PCI-SDK-iOS"
  spec.license            = { :type => "MIT" }
  spec.author             = { "Cascade Financial Technology" => "qa@cascadefintech.com" }
  spec.source             = { :git => 'https://github.com/cftc01/PCI-SDK-iOS.git', :tag => "#{spec.version}" }
  spec.swift_version      = "5.3"
  spec.source_files       = "Sources", "Sources/**/*.*"
 # spec.exclude_files      = "Classes/Exclude"

  # Supported deployment targets
  spec.ios.deployment_target  = "15.1"

  # Published binaries
  vendored_frameworks = "CascadeiOSSDK.xcframework"
end
