//
//  FirstTurorialViewController.swift
//  FitQuest Arena
//
//  Created by Swan Nay Phue Aung on 03/07/2024.
//

import UIKit

class FirstTurorialViewController: UIViewController {

    @IBOutlet weak var instructionBoxA: UIView!
    
    @IBOutlet weak var instructionBoxB: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()

        
    }
    
    private func setUpUI() {
        self.view.backgroundColor = .black
        instructionBoxA.layer.cornerRadius = 20
        instructionBoxA.layer.borderWidth = 2
        instructionBoxA.layer.borderColor = UIColor.white.cgColor
        
        instructionBoxB.layer.cornerRadius = 20
        instructionBoxB.layer.borderWidth = 2
        instructionBoxB.layer.borderColor = UIColor.white.cgColor
        
        
        //MARK: Initializing Reusable Button
         let buttonWidth: CGFloat = 300
         let buttonHeight: CGFloat = 50
         let bottomPadding : CGFloat = 85
         let buttonX = (view.bounds.width - buttonWidth) / 2
         let buttonY = view.bounds.height - buttonHeight - bottomPadding
        
        let button = ReusableButton(frame: CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight))
        view.addSubview(button)

        button.configure(with: ButtonModel(text: "Next"))
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
