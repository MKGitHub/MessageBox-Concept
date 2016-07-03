//
//  MessageBox.swift
//  version 1.0.2
//
//  Created by Mohsan Khan on 2016-03-27.
//  Copyright © 2016 Mohsan Khan. All rights reserved.
//

/*
    GitHub Notes
    Swift Version: 3 beta 1
    URL: https://github.com/MKGitHub/MessageBox-Concept
*/

import Foundation


/*
    Example Usage:

    private let mMessageBox:MessageBox = MessageBox()
 
     // put message
     mMessageBox.set(object:"TestObject1", key:"TestKey1")

     // get message, don't remove
     let someObject:String = mMessageBox.get(objectForKey:"TestKey1", removeObject:no)

     // get message, remove
     let someObject:String = mMessageBox.get(objectForKey:"TestKey1", removeObject:yes)
*/


final class MessageBox
{
    // MARK: Private Member
    private var mMessageDictionary:Dictionary<String, AnyObject> = Dictionary<String, AnyObject>()


    // MARK:- Public Methods


    func set(object:AnyObject, key:String)
    {
        mMessageDictionary[key] = object
    }


    ///
    /// Returns `nil` if the object does not exist.
    ///
    func get(objectForKey key:String, removeObject:Bool)
    -> AnyObject?
    {
        let obj:AnyObject? = mMessageDictionary[key]

        if (removeObject) {
            mMessageDictionary.removeValue(forKey:key)
        }

        return obj
    }
}

