# HTMLString

This class represents an HTML string. It can be used to create an AttributedString for displaying HTML text.

## Usage

```swift

import HTMLString

struct MyStruct: Codable {
  var html: HTMLString?
}

struct MyView: View {
  let myStruct : MyStruct
  var body: some View {
    if let html = myStruct.html?.asSafeMarkdownAttributedString {
      Text(html)
    }
  }
}
```

## Credits

This code was originally extracted from
[IceCubesApp](https://github.com/Dimillian/IceCubesApp/blob/main/Packages/Models/Sources/Models/Alias/HTMLString.swift)
 
## Versions

### 1.1.1

Unescape entities. RawText and markdownText no loger have escaped entities like `&amp;`

### 1.1.0

Added HTMLString(html:String) intializer for intializing from a HTML string.

### 1.0.4

Upped iOS and related version minimum to 15 (the actual API at which AttributedString is available.)

### 1.0.3

- Dropped iOS and related version minimum to 13.
- Recognize <b> and <i> tags.
- Limited support for <blockquote> tag.

### 1.0.2

- Switched Package version to 5.7 (to work with Swift 5.7).

### 1.0.1

First version.

