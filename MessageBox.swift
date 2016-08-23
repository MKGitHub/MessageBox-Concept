//
//  MessageBox.swift
//  version 1.0.3
//
//  Swift Version: 3 beta 6
//
//  Created by Mohsan Khan on 2016-03-27.
//  Copyright © 2016 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/MessageBox-Concept
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//
//  Copyright 2016 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import Foundation


/**
    Example Usage:

    ```swift

    let messageBox:MessageBox = MessageBox()

    // put message
    messageBox.set(object:"TestObject1", key:"TestKey1")

    // get message, but don't remove it – so that we or someone else can still retrieve it later
    let someObject:String = messageBox.get(objectForKey:"TestKey1", removeObject:no)

    // get message, and remove it
    let someObject:String = messageBox.get(objectForKey:"TestKey1", removeObject:yes)
*/
final class MessageBox
{
    // MARK: Private Member
    fileprivate var mMessageDictionary:Dictionary<String, Any> = Dictionary<String, Any>()


    // MARK:- Public Methods


    func set(object:Any, key:String)
    {
        mMessageDictionary[key] = object
    }


    ///
    /// - returns: `nil` if the object does not exist.
    ///
    func get(objectForKey key:String, removeObject:Bool)
    -> Any?
    {
        let obj:Any? = mMessageDictionary[key]

        if (removeObject) {
            mMessageDictionary.removeValue(forKey:key)
        }

        return obj
    }
}

