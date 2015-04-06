//
//  InterfaceController.swift
//  ContextMenu WatchKit Extension
//
//  Created by PanaCloud on 06/04/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var actionLabel: WKInterfaceLabel!
    
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

    @IBAction func accepted() {
        
        actionLabel.setText("Accepted")
        
    }
    
    
    @IBAction func declined() {
        
        actionLabel.setText("Declined")
    }
    
}
