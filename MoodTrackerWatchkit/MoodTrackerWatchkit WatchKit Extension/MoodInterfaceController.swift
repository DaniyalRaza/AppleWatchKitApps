//
//  MoodInterfaceController.swift
//  MoodTrackerWatchkit
//
//  Created by PanaCloud on 04/04/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import WatchKit
import Foundation


class MoodInterfaceController: WKInterfaceController {
    
    var currentMood=0
    
    var moodText=["Good","Normal","Bad"]

    @IBOutlet weak var moodImage: WKInterfaceImage!
    
    
    @IBOutlet weak var moodLabel: WKInterfaceLabel!
    
    @IBOutlet weak var moodDescription: WKInterfaceLabel!
    
    @IBOutlet weak var adviceLabel: WKInterfaceLabel!
    
    
//    init(context:AnyObject?) {
//        if let moodContext=context as? Int{
//            currentMood = moodContext
//            println(currentMood)
//            
//        }
//    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let moodContext=context as? Int{
            currentMood = moodContext
            println(currentMood)
            
        }
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        moodImage.setImageNamed("mood\(currentMood)")
        moodLabel.setText(moodText[currentMood])
        moodDescription.setText("Your mood is \(moodText[currentMood]) for now")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
