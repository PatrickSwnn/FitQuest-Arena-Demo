//
//  HomeViewController.swift
//  FitQuest Arena
//
//  Created by Swan Nay Phue Aung on 01/07/2024.
//

import Foundation
import UIKit

class HomeViewController : UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }
    
    private func setUpUI() {
        self.view.backgroundColor = .black
        
        //MARK: - logo
        logo.image = UIImage(named: K.logo)
        logo.frame = CGRect(x: logo.frame.origin.x, y: logo.frame.origin.y, width: K.Size.logoWidth, height: K.Size.logoHeight)
        
        //MARK: - Rectangle Image
        imageView.image = UIImage(named: K.thumbnail)
        
        //MARK: - display label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = K.Display.desciption
        label.textColor = .white
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0 //infinity
        
        //MARK: - button style
//        button.tintColor = UIColor(named: K.Color.tintColor)
//        button.frame = CGRect(origin: button.frame.origin, size: .init(width: 300, height: 50))
//        button.layer.cornerRadius = 10
//        button.layer.borderWidth = 1.0
//        button.layer.borderColor = UIColor.white.cgColor
//        
//        
//        //MARK: button text
//        button.setTitle(K.Display.buttonHome, for: .normal)
        
        
        //MARK: Initializing Reusable Button
         let buttonWidth: CGFloat = 300
         let buttonHeight: CGFloat = 50
         let bottomPadding : CGFloat = 85
         let buttonX = (view.bounds.width - buttonWidth) / 2
         let buttonY = view.bounds.height - buttonHeight - bottomPadding
        
        let button = ReusableButton(frame: CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight))
        button.configure(with: ButtonModel(text: "Accept Challenge"))
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(button)

        

        
      
    }

    

    
    
    @objc private func buttonPressed() {
        // for animation to be smooth
        //when the storyboards are in different files, initilize a new one here
        let firstTutoSB = UIStoryboard(name: "FirstTutorial", bundle: nil)
        let firstTutoVC = firstTutoSB.instantiateViewController(withIdentifier: "FirstTutorial")
        self.navigationController?.pushViewController(firstTutoVC, animated: true)
    }
    
   
}
