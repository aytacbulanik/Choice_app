//
//  ViewController.swift
//  Choice_app
//
//  Created by AYTAÇ BULANIK on 17.03.2022.
//

import UIKit

class ViewController: UIViewController {
    var storyObject : StoryBrain!
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var choice1ButtonOut: UIButton!
    @IBOutlet weak var choice2ButtonOut: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextLabel.text = storyObject.sendStory().title
        
    }

    @IBAction func changedStory(_ sender: UIButton) {
        
    }
    
}

