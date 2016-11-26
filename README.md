[![MadeInSweden](https://img.shields.io/badge/Made In-Stockholm, Sweden-blue.svg)](https://en.wikipedia.org/wiki/Stockholm)

[![Status](https://img.shields.io/badge/Status-Active doing well & alive-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Version](https://img.shields.io/badge/Version-1.1.0-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Pod](https://img.shields.io/badge/pod-1.1.0-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)

[![Platform](https://img.shields.io/badge/Platforms-macOS + iOS + tvOS + watchOS-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Swift](https://img.shields.io/badge/Swift Version-3.0.1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)


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


Used By
------
[McDonald's Sweden](https://itunes.apple.com/se/app/mcdonalds-sverige/id322810359?mt=8)


Notes
------
   https://github.com/MKGitHub/MessageBox-Concept

   http://www.xybernic.com

   http://www.khanofsweden.com

   Copyright 2016 Mohsan Khan

   Licensed under the Apache License, Version 2.0.

