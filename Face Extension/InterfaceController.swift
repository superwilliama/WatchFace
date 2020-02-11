//
//  InterfaceController.swift
//  Face Extension
//
//  Created by William Andersen on 18/01/2020.
//  Copyright © 2020 William Andersen. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var skInterface: WKInterfaceSKScene!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        setTitle(" ")

        // Configure interface objects here.

        // Load the SKScene from 'GameScene.sks'
        if let scene = GameScene(fileNamed: "GameScene") {
            
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            

            // Present the scene
            self.skInterface.presentScene(scene)

            // Use a value that will maintain a consistent frame rate
            self.skInterface.preferredFramesPerSecond = 40
        }
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        skInterface.isPaused = false
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
