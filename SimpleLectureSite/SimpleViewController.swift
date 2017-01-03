//
//  SimpleViewController.swift
//  SimpleLectureSite
//
//  Created by Daesub Kim on 2016. 11. 8..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

//import Cocoa
import UIKit

class SimpleViewController: UIViewController {

    @IBOutlet weak var aImageView: UIImageView!
    @IBOutlet weak var aButton: UIButton!
    
    var name: String = ""
    var imageName: String = ""
    var url: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aButton.setTitle(name, forState: .Normal)
        //aImageView.image = UIImage(named: imageName)
        
        print("Load SimpleVC \(name), \(imageName)")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ShowDetailVCSegue") {
            if let dest = segue.destinationViewController as? DetailViewController {
                dest.siteName = name
                dest.siteURL = url
            }
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        self.performSegueWithIdentifier("ShowDetailVCSegue", sender: self)
        
    }
    
}
