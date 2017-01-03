//
//  DetailViewController.swift
//  SimpleLectureSite
//
//  Created by Daesub Kim on 2016. 11. 8..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var aWebView: UIWebView!
    
    var siteName: String = ""
    var siteURL: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("LoadDetailVC \(siteName), \(siteURL)")
        title = siteName
        let url = NSURL(string: siteURL)
        let requestObject = NSURLRequest(URL: url!)
        aWebView.loadRequest(requestObject)
    }
       
}
