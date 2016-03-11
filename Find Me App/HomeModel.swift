//
//  HomeModel.swift
//  Find Me App
//
//  Created by Sergio Rodriguez on 3/10/16.
//  Copyright © 2016 Sergio Rodriguez. All rights reserved.
//

import UIKit
import Foundation

protocol HomeModelProtocal: class {
    func itemsDownloaded(items: NSArray)
}

class HomeModel: NSObject, NSURLSessionDataDelegate {

    //properties
    
    weak var delegate: HomeModelProtocal!
    
    var data : NSMutableData = NSMutableData()
    
    let urlPath: String = "http://127.0.0.1/webservicefind/service.php" //this will be changed to the path where service.php lives
    
    
    func downloadItems() {
        
        let url: NSURL = NSURL(string: urlPath)!
        var session: NSURLSession!
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        
        
        session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: nil)
        
        let task = session.dataTaskWithURL(url)
        
        task.resume()
        
    }
    
    func URLSession(session: NSURLSession, dataTask: NSURLSessionDataTask, didReceiveData data: NSData) {
        self.data.appendData(data);
        
    }
    
    func URLSession(session: NSURLSession, task: NSURLSessionTask, didCompleteWithError error: NSError?) {
        if error != nil {
            print("Failed to download data")
        }else {
            print("Data downloaded")
            self.parseJSON()
        }
    }
    
    func parseJSON() {
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(self.data, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement: NSDictionary = NSDictionary()
        let users: NSMutableArray = NSMutableArray()
        
        for(var i = 0; i < jsonResult.count; i++)
        {
            
            jsonElement = jsonResult[i] as! NSDictionary
            
            let user = UsersModel()
            
            //the following insures none of the JsonElement values are nil through optional binding
            if  let id = jsonElement["id"] as? String,
                let name = jsonElement["name"] as? String,
                let email = jsonElement["email"] as? String,
                let password = jsonElement["password"] as? String
            {
                user.id = id
                user.name = name
                user.email = email
                user.password = password
                
            }
            
            users.addObject(user)
            
        }
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            
            self.delegate.itemsDownloaded(users)
            
        })
    }
    
}
