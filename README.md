# KHQR-Pod 

## Description
Repository for storing pod, it linked with the lib repository. <br/>
For private pod required specify source in Podfile.
More info: [Private Pods](https://guides.cocoapods.org/making/private-cocoapods.html)

## Installation
```ruby
source "https://gitlab.nbc.gov.kh/khqr/khqr-ios-pod.git"
target 'App_Name' do
  pod 'BakongKHQR'
end
```

## Version
> 1.0.2

## Spec repo unique structure as below: 

```bash
├── [Root directory] 
│   ├── [Lib Directory]
│   │   ├── [VERSION Directory] 
│   |       ├── SPEC_NAME.podspec
```

## Author

samboseth168@nbc.org.kh
