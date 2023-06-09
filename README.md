# iOS PCI SDK

To use this package: 

1. Add it to your XCode project
2. Initialize as shown in code sample below

```
import CascadeiOSSDK
.
.
.
var colors = CascadeColors()
//colors.primary = Color.blue
  
var cornerRadii = CascadeCornerRadii()
//cornerRadii.buttonCorner =  eCascadeCornerRadius.square
//cornerRadii.modalCorner = eCascadeCornerRadius.major
//cornerRadii.textFieldCorner = eCascadeCornerRadius.minor

// optional custom image and name for a wearable:
let wearableName = "Cool Device"
let wearableImage = UIImage(named: "343x213wearableImage")
        
var retVal = CascadeiOSSDK.initialize(
            base64EncodedPreSharedKey: base64EncodedPreSharedKey,
            apiUrl: apiBaseUrl,
            ivCallback: getIv,
            useBiometrics: false,
            colors: colors,
            cornerRadii: cornerRadii,
            wearableName: wearableName,
            wearableImage: wearableImage)

.
.
.

// ---------

NOTE: if you want to use a different user after already using the SDK with a user, 
call the 'initialize(...)' method again.

// ---------

// To retrieve the version of the SDK:
 
var sdkVersionStr = ""    
if let bundle = Bundle(identifier: "com.cascadefintech.iOSSDK.CascadeiOSSDK") {
    if let build: String = bundle.infoDictionary?["CFBundleShortVersionString"] as? String {
         print("The SDK version: \(build)")
         sdkVersionStr = build
    }
}
```


# Releases
## 1.0.4
  * Reset in Initialize to allow different user + ability to copy virtual and wearable card details

## 1.0.3
  * Allow user to pass in wearable card and name and show new wearable screen when card is a wearable

## 1.0.2
  * Allow wearable cards to be displayed in the same way virtual cards are displayed.
  * Fixed issue with resending verification code
  * Corrected button name on Activate and Set Pin Success screens
