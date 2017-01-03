//
//  LectureSite.swift
//  SimpleLectureSite
//
//  Created by Daesub Kim on 2016. 11. 8..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import Foundation
import UIKit

struct LectureSite {
    
    var name: String
    var url: String
    var imageName: String
    var image: UIImage {
        get {
            return UIImage(named: imageName)!
        }
    }
}