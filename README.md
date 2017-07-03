# Localizable
- Simple approach to localize strings/images.
- Change app language in the app.


![Demo](https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/Demo_.gif)

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
All logic is in [Localizable.swift](https://github.com/romansorochak/Localizable/blob/master/Localizable/Localizable.swift) file.
Just copy this [file](https://github.com/romansorochak/Localizable/blob/master/Localizable/Localizable.swift) to your project.

# Usage

## Localize your project
1) Create Localizable.strings file 

<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_1_1.png" width="200"/>
<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_1_2.png" width="200"/>

2) In Localizable.strings file tap Localize button and select english language.

<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_2_1.png" width="200"/>
<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_2_2.png" width="200"/>

3) In project file add supported languages.

<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_3_1.png" width="200"/>
<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_3_2.png" width="200"/>

4)  Recommendation: do not localize storyboards or xibs. Make it simpler. Put all your localized strings in Localizable.strings file.
<img src="https://github.com/romansorochak/Localizable/blob/master/Localizable/DemoAssets/tut_3_3.png" width="400"/>

5) Reproduce step 2 for needed languages.

## Localization
1) Recommendation: do not localize storyboards/xibs. Always set strings from code.

2) Extend enum Language with appropriate languages used in the project
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
