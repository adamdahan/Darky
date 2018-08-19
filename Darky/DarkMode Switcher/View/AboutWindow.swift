//
//  AboutView.swift
//  DarkMode Switcher
//
//  Created by Mohamed Arradi on 6/11/18.
//  Copyright © 2018 Mohamed ARRADI. All rights reserved.
//

import Foundation
import Cocoa

class AboutWindow: NSWindowController {
    
    @IBOutlet weak var appIconImageView: NSImageView!
    @IBOutlet weak var appNameLabel: NSTextField!
    @IBOutlet weak var appBuildVersionLabel: NSTextField!
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name(rawValue: "AboutWindow")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        self.window?.titlebarAppearsTransparent =  true
        
        self.window?.center()
        self.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
        
        appNameLabel.stringValue = "Darky"
       
        guard let releaseVersionNumber = Bundle.main.releaseVersionNumber, let buildNumber = Bundle.main.buildVersionNumber else {
            return
        }
        
        appBuildVersionLabel.stringValue = "Version ".appending(releaseVersionNumber).appending(String(format: ".%@", buildNumber))
        
    }
}
