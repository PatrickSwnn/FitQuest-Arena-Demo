//
//  ReusableButton.swift
//  FitQuest Arena
//
//  Created by Swan Nay Phue Aung on 03/07/2024.
//

import UIKit

final class ReusableButton: UIButton {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(buttonLabel)
        clipsToBounds = true
        layer.cornerRadius = 10

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
    
    private let buttonLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    

    
    func configure(with model : ButtonModel) {
        //configure text and backgrond color of the button
        buttonLabel.text = model.text
        buttonLabel.textColor = .white
        backgroundColor = UIColor(named: K.Color.tintColor)
        
       let attributedString = NSAttributedString(string: model.text, attributes: [
                    .foregroundColor: UIColor.white,
                   .strokeColor: UIColor.black,
                   .strokeWidth: -1.0,
                   .font: UIFont.systemFont(ofSize: 24, weight: .bold)
               ])
        buttonLabel.attributedText = attributedString
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        buttonLabel.sizeToFit()
        buttonLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
    }
    
    
    
    

}
