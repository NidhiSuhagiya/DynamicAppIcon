//
//  ViewController.swift
//  SampleLaunch
//
//  Created by Nidhi Suhagiya on 16/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func AppIcon1BtnPressed(_ sender: Any) {
        setAlternateAppIcon(iconName: "AppIcon-1")
    }
    
    @IBAction func AppIcon2BtnPressed(_ sender: Any) {
        setAlternateAppIcon(iconName: "AppIcon-2")
    }
    
    @IBAction func defaultBtnPressed(_ sender: Any) {
        setAlternateAppIcon()
        //        UIApplication.shared.setAlternateIconName(nil)
    }
    
    private func setAlternateAppIcon(iconName: String? = nil) {
        if UIApplication.shared.supportsAlternateIcons {
            // let the user choose a new icon
            print("You are allowed to set custom icons")
            
            //            Set alternate app icon
            UIApplication.shared.setAlternateIconName(iconName) { error in
                guard let errorObj = error else {
                    print("App icon has been changed successfully.")
                    return
                }
                print("Error to set alternate app icon:- \(errorObj.localizedDescription)")
            }
        }
    }
}

