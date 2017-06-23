# Localizable
- Simple approach to localize strings/images.
- Change app language in the app.


![Demo](https://github.com/romansorochak/Localizable/blob/master/Localizable/Demo.gif)

## Contents
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)


## Requirements

- iOS 9.0+
- Xcode 8.0+
- Swift 3.0+

## Installation

All logic is in Localizable.swift file.
Just copy this file to your project.


# Usage

## Localization
Do not localize storyboards/xibs.
Always set strings from code.

- Extend enum Language with appropriate languages used in the project
```swift 
enum Language: String {
    
    case english = "en"
    case arabic = "ar"
    case ukrainian = "uk"
    //...
```

## Get appropriate localized string
```swift 
"main_page_language".localized
```

## Get appropriate localized image
```swift 
"flag".localizedImage
```

## Change language in the app 
To change language just set Language case to Language.language static property.
It will change app language and semantic if need.
To enable changes it will restart the app within instantiating initial view controller from Main storyboard.
- Important: use appropriate properties described above.

```swift 
Language.language = Language.english
```

## License

Reusable is released under the MIT license. See [LICENSE](https://github.com/romansorochak/Localizable/blob/master/LICENSE) for details.
