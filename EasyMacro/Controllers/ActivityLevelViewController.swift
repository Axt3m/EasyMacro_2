//
//  ActivityViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 15/03/2023.
//

import UIKit

class ActivityLevelViewController: UIViewController {
    
    @IBOutlet weak var question3Label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    public var userActivityLevel: String = ""
    
    var userChoices: UserChoices!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        guard userChoices != nil else{
            fatalError()
        }
        
        progressBar.progress = 3/6
        
        customScreen()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        userChoices.activity = userActivityLevel
        if segue.identifier == Constants.activityToSports {
            let sportVC = segue.destination as! SportsViewController
            sportVC.userChoices = userChoices
            
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {

        var buttons: [UIButton] = [button1, button2, button3, button4]
        Visual.selectedButton(sender) {textButton in
            self.userActivityLevel = textButton
        }

        if let index = buttons.firstIndex(of: sender){
            buttons.remove(at: index)
        }
        if !buttons.isEmpty{
            Visual.deselectButtons(buttons)
        }
        
    }
    
    private func customScreen(){
        Visual.customLabel(to: question3Label, text: Constants.activityQuestion, font: Constants.questionPolice, size: 27)
        Visual.buttonShadowAndFont(to: nextButton)

        Visual.customButton(to: button1, text: Constants.activityAnswer1, isDefaultButton: true) {defaultTextButton in
            self.userActivityLevel = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: Constants.activityAnswer2)
        Visual.customButton(to: button3, text: Constants.activityAnswer3)
        Visual.customButton(to: button4, text: Constants.activityAnswer4)
    }

}
