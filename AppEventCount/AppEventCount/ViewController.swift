//
//  ViewController.swift
//  AppEventCount
//
//  Created by sam long on 10/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var configurationForConnecting: UILabel!
    @IBOutlet weak var sceneWIllConnect: UILabel!
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    @IBOutlet weak var sceneWillResignActive: UILabel!
    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    
    
    
    var sceneWIllConnectCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        func updateView() {
            didFinishLaunching.text = "The App has launched \(appDelegate.launchCount) time(s)"
            configurationForConnecting.text = "Configuration for connecting called \(appDelegate.configurationForConnectingCount) time(s)"
            sceneWIllConnect.text = "Scene will connect \(sceneWIllConnectCount) time(s)"
            sceneDidBecomeActive.text = "Scene did become active \(sceneDidBecomeActiveCount) time(s)"
            sceneWillResignActive.text = "Scene will resign active \(sceneWillResignActiveCount) time(s)"
            sceneWillEnterForeground.text = "Scene will enter foreground \(sceneWillEnterForegroundCount) time(s)"
            sceneDidEnterBackground.text = "Scene did enter background \(sceneDidEnterBackgroundCount) time(s)"
            
        }
        
    }

