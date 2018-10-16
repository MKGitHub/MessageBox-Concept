[![MadeInSweden](https://img.shields.io/badge/Made_In-Stockholm_Sweden-blue.svg)](https://en.wikipedia.org/wiki/Stockholm)
[![Status](https://img.shields.io/badge/Status-Active_and_in_development-blue.svg)](https://github.com/MKGitHub/MessageBox)

[![Version](https://img.shields.io/badge/Version-1.2-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Carthage](https://img.shields.io/badge/carthage-1.2-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![SPM](https://img.shields.io/badge/SPM-1.2-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![CocoaPods](https://img.shields.io/badge/CocoaPods-🤬-blue.svg)](https://github.com/MKGitHub/MessageBox)

[![Platform](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Swift](https://img.shields.io/badge/Swift_Version-4.2-blue.svg)](https://github.com/MKGitHub/MessageBox)


🌟 Give this repo a star and help its development grow! 🌟

<br/>


MessageBox Concept
------
MessageBox is a simple concept for decoupling entities. Think of it as notifications but the opposite.

* For example entity A can place a message that entity B can read whenever suitable – not at once like notifications.
* For example a view controller would like to talk to another view controller, but you don't want to create a strong or weak relationship between them.
* This concept is highly flexible as it allows you to change which entity should put & get a message, without having to refactor your code & architecture.

![Image of MessageBox-Concept](https://github.com/MKGitHub/MessageBox-Concept/blob/master/MessageBox.png)

<br/>


Simple Example Usage
------
```swift
let messageBox = MessageBox()

// set
messageBox.setObject("TestObject1", forKey:"TestKey1")

// get
// but don't remove it, keep it stored, so that it can still be retrieved later
let someObject = messageBox.getObject(forKey:"TestKey1", removeIfFound:false)

// get
// and remove it
let someObject = messageBox.getObject(forKey:"TestKey1", removeIfFound:true)
```

<br/>


What’s New?
------
* Version 1.2 updates for Swift 4.2.
* Version 1.1.1 adds documentation.


Requirements
------
* Swift Version 4.2
* Xcode 10


How to Install
------
There is no framework/library distibution, I recommend that you simply add the `MessageBox.swift` to your project. As this will allow you to easily find & read the MessageBox API, and it will also allow MessageBox to compile using your apps build settings. 

* Using Git: `git clone https://github.com/MKGitHub/MessageBox.git` then add `MessageBox.swift` to your Xcode project.
* Manual Way: Add `MessageBox.swift` to your Xcode project.
* Using Carthage: In your Cartfile add `github "MKGitHub/MessageBox" ~> 1.2` then `carthage update --no-build` then add `MessageBox.swift` to your Xcode project.
* Using Swift Package Manager: swift-tools-version:4.0
* CocoaPods support has been removed! 🙌🙏🎉 Never use CocoaPods! 💀


Documentation
------
Go to the documentation [index page](http://htmlpreview.github.io/?https://raw.githubusercontent.com/MKGitHub/MessageBox-Concept/master/docs/index.html).


Used In Apps
------
MessageBox is used in production in the following apps/games (that I'm aware of), these apps are together used by millions of users. Please let me know if you use MessageBox.

* McDonald's apps


Notes
------
https://github.com/MKGitHub/MessageBox-Concept

http://www.xybernic.com

Copyright 2016/2017/2018 Mohsan Khan

Licensed under the Apache License, Version 2.0.

