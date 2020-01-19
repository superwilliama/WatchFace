//
//  IntroInterfaceController.swift
//  WatchFace
//
//  Created by William Andersen on 18/01/2020.
//  Copyright © 2020 William Andersen. All rights reserved.
//

import WatchKit
import Foundation


class IntroInterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        presentController(withName: "InterfaceController", context: nil)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func goToWatchFace() {
        presentController(withName: "InterfaceController", context: nil)
    }
}
