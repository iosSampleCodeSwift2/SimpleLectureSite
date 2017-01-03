//
//  ViewController.swift
//  SimpleLectureSite
//
//  Created by Daesub Kim on 2016. 11. 8..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var sites: [LectureSite] = [LectureSite]()
    
    @IBOutlet weak var aTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Lectures"
        
        aTableView.delegate = self
        aTableView.dataSource = self
        loadData()
        aTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

/*    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }*/
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sites.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = aTableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        let site = sites[indexPath.row] as LectureSite
        
        cell.textLabel?.text = site.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        print(cell.textLabel?.text)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        print("You selected #\(indexPath.row)")
        
        let site = sites[indexPath.row] as LectureSite
        let aViewController: SimpleViewController = storyboard?.instantiateViewControllerWithIdentifier("SimpleViewController") as! SimpleViewController
        aViewController.name = site.name
        aViewController.imageName = site.imageName
        aViewController.url = site.url
        
        navigationController?.pushViewController(aViewController, animated: true)
    }

    func loadData() -> [LectureSite] {
        
        sites.append(LectureSite(name: "2016 CG", url:  "http://dis.dankook.ac.kr/lecutres/cg16", imageName: "cg16" ))
        sites.append(LectureSite(name: "2016 Java", url:  "http://dis.dankook.ac.kr/lecutres/java16", imageName: "java16" ))
        sites.append(LectureSite(name: "2016 HCI", url:  "http://dis.dankook.ac.kr/lecutres/hci16", imageName: "hci16" ))
        sites.append(LectureSite(name: "2016 MED", url:  "http://dis.dankook.ac.kr/lecutres/med16", imageName: "med16" ))
        sites.append(LectureSite(name: "2016 DMS", url:  "http://dis.dankook.ac.kr/lecutres/dms16", imageName: "dms16" ))
        sites.append(LectureSite(name: "2016 PMD", url:  "http://dis.dankook.ac.kr/lecutres/pmd16", imageName: "pmd16" ))
        
        return sites
    }

    
}

