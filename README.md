# SwiftPinYin

[![CI Status](https://img.shields.io/travis/yangentao/SwiftPinYin.svg?style=flat)](https://travis-ci.org/yangentao/SwiftPinYin)
[![Version](https://img.shields.io/cocoapods/v/SwiftPinYin.svg?style=flat)](https://cocoapods.org/pods/SwiftPinYin)
[![License](https://img.shields.io/cocoapods/l/SwiftPinYin.svg?style=flat)](https://cocoapods.org/pods/SwiftPinYin)
[![Platform](https://img.shields.io/cocoapods/p/SwiftPinYin.svg?style=flat)](https://cocoapods.org/pods/SwiftPinYin)

## Example

```swift
import SwiftPinYin

let s = PinYin.findOne(c: "臷") {
	String($0)
}
print("臷:[" + s + "]")

let s = PinYin.findAll(s: "杨恩涛1a")
print(s)

let s = PinYin.findAll(set: Set<Character>("杨恩涛2c")) {
	String($0)
}
print(s)

```
outputs:
```
臷:[zhi2 die2]                                     //0.15秒, 第一次运行, 从文件加载数据.
["恩": "en1", "涛": "tao1", "杨": "yang2"]          //0.00035秒
["恩": "en1", "涛": "tao1", "c": "c", "杨": "yang2", "2": "2"] //0.00016秒
```


## Requirements

## Installation

SwiftPinYin is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftPinYin'
```

## Author

yangentao, entaoyang@163.com

## License

SwiftPinYin is available under the MIT license. See the LICENSE file for more info.
