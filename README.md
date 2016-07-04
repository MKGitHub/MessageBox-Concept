[![Status](https://img.shields.io/badge/Status-Active doing well & alive-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Version](https://img.shields.io/badge/Version-1.0.2-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Pod](https://img.shields.io/badge/pod-1.0.2-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)

[![Platform](https://img.shields.io/badge/Platforms-macOS + iOS + tvOS + watchOS-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)
[![Swift](https://img.shields.io/badge/Swift Version-3 beta 1-blue.svg)](https://github.com/MKGitHub/MessageBox-Concept)


MessageBox Concept
------

MessageBox is a simple concept for decoupling entities. Think of it as notifications but the opposite.

* For example entity A can place a message that entity B can read whenever suitable – not at once like notifications.
* A view controller would like to talk to another view controller, but you don't want to create a strong or weak relationship.

![Image of MessageBox-Concept](https://github.com/MKGitHub/MessageBox-Concept/blob/master/MessageBox.png)


### Example Usage ###
    ```swift
    private let box:MessageBox = MessageBox()

    // put message
    box.set(object:"TestObject1", key:"TestKey1")

    // get message, don't remove so that we or someone else can still retrieve it later
    let someObject:String = box.get(objectForKey:"TestKey1", removeObject:no)

    // get message, remove
    let someObject:String = box.get(objectForKey:"TestKey1", removeObject:yes)
    ```


---

   https://github.com/MKGitHub/MessageBox-Concept

   http://www.xybernic.com

   http://www.khanofsweden.com

   Copyright 2016 Mohsan Khan

   Licensed under the Apache License, Version 2.0.
