# FooyoIndoorSDK

[![CI Status](https://img.shields.io/travis/pushian/FooyoIndoorSDK.svg?style=flat)](https://travis-ci.org/pushian/FooyoIndoorSDK)
[![Version](https://img.shields.io/cocoapods/v/FooyoIndoorSDK.svg?style=flat)](https://cocoapods.org/pods/FooyoIndoorSDK)
[![License](https://img.shields.io/cocoapods/l/FooyoIndoorSDK.svg?style=flat)](https://cocoapods.org/pods/FooyoIndoorSDK)
[![Platform](https://img.shields.io/cocoapods/p/FooyoIndoorSDK.svg?style=flat)](https://cocoapods.org/pods/FooyoIndoorSDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

FooyoIndoorSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod 'FooyoIndoorSDK', :git => 'https://github.com/pushian/FooyoIndoorSDK.git'
```

## How to use

Create a new instance of FooyoIndoorSDKViewController, and use the following lines to define the action of your navigation button.
```
navigationButton.addTarget(self, action: #selector(btnHandler), for: .touchUpInside)

@objc func btnHandler() {
    let vc = FooyoIndoorSDKViewController()
    let nav = UINavigationController.init(rootViewController: vc)
    self.present(nav, animated: true, completion: nil)
}
```
## Author

pushian, y@fooyo.sg

## License

FooyoIndoorSDK is available under the MIT license. See the LICENSE file for more info.
