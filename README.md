[![MadeInSweden](https://img.shields.io/badge/Made_In-Stockholm_Sweden-blue.svg)](https://en.wikipedia.org/wiki/Stockholm)
[![Status](https://img.shields.io/badge/Status-Active_in_development-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)

[![Version](https://img.shields.io/badge/Version-1.1.1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Carthage](https://img.shields.io/badge/carthage-1.1.1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![SPM](https://img.shields.io/badge/SPM-1.1.1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Pod](https://img.shields.io/badge/pod-1.1.1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)

[![Platform](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Swift](https://img.shields.io/badge/Swift_Version-3.0.1/3.1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)


★ Give this repo a star and help its development grow! ★


MessageBox Concept
------
MessageBox is a simple concept for decoupling entities. Think of it as notifications but the opposite.

* For example entity A can place a message that entity B can read whenever suitable – not at once like notifications.
* A view controller would like to talk to another view controller, but you don't want to create a strong or weak relationship.

![Image of MessageBox-Concept](https://github.com/MKGitHub/MessageBox-Concept/blob/master/MessageBox.png)


Simple Example Usage
------
```swift
let messageBox:MessageBox = MessageBox()

// set
messageBox.setObject("TestObject1", forKey:"TestKey1")

// get
// but don't remove it, keep it stored, so that it can still be retrieved later
let someObject:String = messageBox.getObject(forKey:"TestKey1", removeIfFound:false)

// get
// and remove it
let someObject:String = messageBox.getObject(forKey:"TestKey1", removeIfFound:true)
```


What’s New?
------
* Version 1.1.1 adds documentation.


Requirements
------
* Swift Version 3.0.1
* ARC
* macOS 10.11 and later
* iOS 9.0 and later
* tvOS 9.0 and later


How to Install
------
There is no framework/library distibution, I recommend that you add the MessageBox-Concept/Sources to your project. As this will allow you to easily find & read the MessageBox API, it will also allow MessageBox to compile using your apps build settings. 
* Git: run `git clone https://github.com/MKGitHub/MessageBox-Concept.git` then `Drag & Drop the MessageBox-Concept/Sources into your Xcode project.`
* Manual: `Drag & Drop the MessageBox-Concept/Sources into your Xcode project.`
* Carthage: In your Cartfile add `github "MKGitHub/MessageBox-Concept" ~> 1.1.1` then `carthage update --no-build` then `Drag & Drop the MessageBox-Concept/Sources into your Xcode project.`
* Swift Package Manager (still quite meaningless): run `swift build` or `swift package generate-xcodeproj`
* CocoaPods (not recommended!): `pod 'MessageBox', '~> 1.1.1'`


Documentation
------
Go to the documentation [index page](http://htmlpreview.github.io/?https://raw.githubusercontent.com/MKGitHub/MessageBox-Concept/master/docs/index.html).


Used In Apps
------
MessageBox is used in production in the following apps/games (known to me), these apps are together used by many millions of users every day. Please let me know if you use MessageBox.

* McDonald's Sweden
* McDonald's Switzerland


Notes
------
   https://github.com/MKGitHub/MessageBox-Concept

   http://www.xybernic.com

   http://www.khanofsweden.com

   Copyright 2016/2017 Mohsan Khan

   Licensed under the Apache License, Version 2.0.

