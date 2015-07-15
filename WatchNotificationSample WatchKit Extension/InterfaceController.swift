//
//  InterfaceController.swift
//  WatchNotificationSample WatchKit Extension
//
//  Created by NakaharaShun on 7/14/15.
//  Copyright © 2015 FiNC inc. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var mainLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    
    
}

extension InterfaceController {
    
    override func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification) {
        print(__FUNCTION__)
    }
    
    override func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject]) {
        print(__FUNCTION__)
        
        print(identifier)
        print(remoteNotification)

        let aps: Dictionary<String, AnyObject>! = remoteNotification["aps"] as! Dictionary<String, AnyObject>
        
        if (aps != nil) {
            let category: String! = aps["category"] as! String
            self.mainLabel.setText(category)
        }
        
        
        if (identifier == nil) {
            return
        }
        
        switch identifier! {
        case "SuccessButton":
            self.presentControllerWithName("Success", context: remoteNotification)
            break
        case "ErrorButton":
            self.presentControllerWithName("Error", context: remoteNotification)
            break
        case "OKGoogleButton":
            self.presentControllerWithName("OKGoogle", context: remoteNotification)
            break
        case "HiSiriButton":
            self.presentControllerWithName("HiSiri", context: remoteNotification)
            break
        default:
            break
            
        }
    }
    
    override func handleUserActivity(userInfo: [NSObject : AnyObject]?) {
        print(__FUNCTION__)        
    }
    
}
