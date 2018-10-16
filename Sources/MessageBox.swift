//
//  MessageBox
//  Copyright © 2016/2017/2018 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/MessageBox-Concept
//  http://www.xybernic.com
//

//
//  Copyright 2016/2017/2018 Mohsan Khan
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
*/
final class MessageBox
{
    // MARK: Private Member
    private var mMessageDictionary:Dictionary<String, Any> = Dictionary<String, Any>()


    // MARK:- Public Methods


    /**
        Set an object for a key.

        - Parameters:
            - object: An object.
            - key: A key name.
    */
    func setObject(_ object:Any, forKey key:String)
    {
        mMessageDictionary[key] = object
    }


    /**
        Get an object for a key.

        - Parameters:
            - key: A key name.
            - removeIfFound: If the object is found then remove it upon retrieval, otherwise let it remain.

        - Returns: The found object, or `nil` if the object does not exist.
    */
    func getObject(forKey key:String, removeIfFound:Bool) -> Any?
    {
        let obj:Any? = mMessageDictionary[key]

        if (removeIfFound) {
            mMessageDictionary.removeValue(forKey:key)
        }

        return obj
    }


    /**
        Check if an object exists for a key.

        - Parameter key: A key name.

        - Returns: `true` or `false`.
    */
    func containsObject(forKey key:String) -> Bool
    {
        if (mMessageDictionary[key] != nil) {
            return true
        }

        return false
    }


    /**
        - Returns: The number of messages in the box.
    */
    func count() -> Int
    {
        return mMessageDictionary.count
    }


    /**
        Remove all messages in the box.
    */
    func removeAll()
    {
        mMessageDictionary.removeAll()
    }


    /**
        - Returns: Returns the underlaying dictionary.
    */
    func dictionary() -> Dictionary<String, Any>
    {
        return mMessageDictionary
    }
}

