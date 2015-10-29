//
//  ViewController.swift
//  Algorhythm
//
//  Created by Kirsche, Kevin Richard on 10/28/15.
//  Copyright © 2015 Kevin Kirsche. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    @IBOutlet weak var aButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        aButton.setTitle("Press me!", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            let playlistDetailViewController = segue.destinationViewController as!
                PlaylistDetailViewController
            playlistDetailViewController.segueLabelText = "Yay! You pressed the button!"
        }
    }

}
