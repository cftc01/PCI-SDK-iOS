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

// ---------

You can specify in Xcode which version of a Swift Package you would like to use.

Case 1: You haven't added the package to XCode yet
1. In XCode: File > Add Packages...
2. On popup use search bar (top left) and enter: https://github.com/cftc01/PCI-SDK-iOS
3. PCI-SDK-IOS will appear and choose Dependency Rule 'Exact' and enter the version you want (i.e. 1.0.4)
4. Press Add Package

Case 2: You've already added the package to XCode
1. In XCode bring up the project settings
2. Choose PROJECT (not TARGET) from the left nav 
3. Choose Package Dependencies from the top nav
4. Select the package of interest (CascadeiOSSDKPackage) and double-click
5. A popup will appear - choose Version 'Exact' and specify the version (i.e. 1.0.4)
6. Press DONE and the package will be updated to the exact version you specified

```


# Releases

## 1.0.5
  * Fix for foreground color on some Text views

## 1.0.4
  * Reset in Initialize to allow different user + ability to copy virtual and wearable card details

## 1.0.3
  * Allow user to pass in wearable card and name and show new wearable screen when card is a wearable

## 1.0.2
  * Allow wearable cards to be displayed in the same way virtual cards are displayed.
  * Fixed issue with resending verification code
  * Corrected button name on Activate and Set Pin Success screens
