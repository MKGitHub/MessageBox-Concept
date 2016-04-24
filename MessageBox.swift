//
//  MessageBox.swift
//  version 1.0.0
//
//  Created by Mohsan Khan on 2016-03-27.
//  Copyright © 2016 Mohsan Khan. All rights reserved.
//

import Foundation


final class MessageBox
{
    // MARK: Private Member
    private var mMessageDictionary:Dictionary<String, AnyObject> = Dictionary<String, AnyObject>()


    // MARK:- Life Cycle


    /*init()
    {
    }*/


    /*deinit
    {
    }*/


    // MARK:- Public Methods


    func setObject(obj:AnyObject, key:String)
    {
        mMessageDictionary[key] = obj
    }


    func getObject(key:String, removeObject:Bool)
    -> AnyObject
    {
        let obj:AnyObject = mMessageDictionary[key]!

        if (removeObject) {
            mMessageDictionary.removeValueForKey(key)
        }

        return obj
    }
}

