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

    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]

        title = playlistDictionary["title"] as? String
        description = playlistDictionary["description"] as? String

        let iconName = playlistDictionary["icon"] as! String
        icon = UIImage(named: iconName)

        let largeIconName = playlistDictionary["largeIcon"] as! String
        largeIcon = UIImage(named: largeIconName)

        artists += playlistDictionary["artists"] as! [String]
    }
}