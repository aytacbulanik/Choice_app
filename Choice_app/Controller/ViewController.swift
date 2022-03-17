//
//  ViewController.swift
//  Choice_app
//
//  Created by AYTAÇ BULANIK on 17.03.2022.
//

import UIKit

class ViewController: UIViewController {
    var storyObject = StoryBrain()
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var choice1ButtonOut: UIButton!
    @IBOutlet weak var choice2ButtonOut: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyShow()
    }

    @IBAction func changedStory(_ sender: UIButton) {
        
        if sender.currentTitle! == storyObject.sendStory().choice1 {
            storyObject.storyNumber = storyObject.sendStory().choice1Destination
        } else {
            storyObject.storyNumber = storyObject.sendStory().choice2Destination
        }
        storyShow()
        
    }
    
    func storyShow() {
        storyTextLabel.text = storyObject.sendStory().title
        choice1ButtonOut.setTitle(storyObject.sendStory().choice1, for: .normal)
        choice2ButtonOut.setTitle(storyObject.sendStory().choice2, for: .normal)
    }
    
}

