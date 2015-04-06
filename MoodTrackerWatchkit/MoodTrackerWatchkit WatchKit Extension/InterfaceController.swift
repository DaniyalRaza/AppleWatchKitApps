//
//  InterfaceController.swift
//  MoodTrackerWatchkit WatchKit Extension
//
//  Created by PanaCloud on 04/04/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var moodImage: WKInterfaceImage!
    
    var currentMood:Int=0
    
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

    @IBAction func moodSlider(value: Float) {
        
        currentMood=Int(value)
        
        println(currentMood)
        
        if(currentMood<0 || currentMood>2){
            return
        }
        
        moodImage.setImageNamed("mood\(currentMood)")
        
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return currentMood
    }
    
    
    
    
}
