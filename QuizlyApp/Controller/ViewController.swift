//
//  ViewController.swift
//  QuizlyApp
//
//  Created by "Hello, Swift!" on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var finalImage: UIImageView!
    @IBOutlet weak var buttonFirst: UIButton!
    @IBOutlet weak var buttonSecond: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let picArray = [UIImage(named: "A"), UIImage(named: "Б"), UIImage(named: "Г"), UIImage(named: "Л"), UIImage(named: "К"), UIImage(named: "Е")]
    
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        finalImage.image = UIImage.init()
        updateView()
        progressBar.setProgress(0, animated: false)
    }
    @IBAction func buttonChoise(_ sender: UIButton) {
        let title = sender.currentTitle ?? ""
        storyBrain.nextStory(UserChoise: title)
        updateView()
        self.progressBar.progress += 0.25
    }
    func updateView(){
        self.questionLabel.text = storyBrain.getStory().title
        self.buttonFirst.setTitle(storyBrain.getStory().choise1, for: .normal)
        self.buttonSecond.setTitle(storyBrain.getStory().choise2, for: .normal)
        if (storyBrain.getStory().choise1 == "ок"){
            finalImage.image = picArray.randomElement()!
        }
    }
}
