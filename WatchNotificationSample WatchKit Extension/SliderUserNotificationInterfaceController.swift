//
//  SliderUserNotificationInterfaceController.swift
//  WatchNotificationSample
//
//  Created by NakaharaShun on 7/15/15.
//  Copyright © 2015 FiNC inc. All rights reserved.
//

import WatchKit
import Foundation

class SlidreUserNotificationInterfaceController: WKUserNotificationInterfaceController {

//    @IBOutlet weak var slider: WKInterfaceSlider!
    
    override init() {
        // Initialize variables here.
        super.init()
        
        // Configure interface objects here.
        
        print(__FUNCTION__)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print(__FUNCTION__)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        print(__FUNCTION__)
    }
    
    override func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        // This method is called when a local notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        print(__FUNCTION__)
        completionHandler(.Custom)
    }
    
    
    override func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        // This method is called when a remote notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        print(__FUNCTION__)
        
        print("remoteNotification")
        print(remoteNotification)
        
        completionHandler(.Custom)
    }

}
