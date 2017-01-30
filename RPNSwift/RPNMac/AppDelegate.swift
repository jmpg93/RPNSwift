//
//  AppDelegate.swift
//  RPNMac
//
//  Created by Jose Maria Puerta on 29/1/17.
//  Copyright © 2017 Jose Maria Puerta. All rights reserved.
//

import Cocoa
import RPNSwift

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let ev = Evaluator()
        
        ev.evaluate(string: "1 + 2 + 4 + 4 + 6 * 4")
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

