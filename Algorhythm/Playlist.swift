//
//  Playlist.swift
//  Algorhythm
//
//  Created by Kirsche, Kevin Richard on 10/29/15.
//  Copyright © 2015 Kevin Kirsche. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
}