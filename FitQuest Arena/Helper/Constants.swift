//
//  Constants.swift
//  FitQuest Arena
//
//  Created by Swan Nay Phue Aung on 01/07/2024.
//

import Foundation
import UIKit

struct K {
    
    static let logo = "fitquest_logo"
    static let thumbnail = "fitquest_thumbnail"
    static let clock = "clock"
    static let flame = "flame"

    
    
    struct Size {
        static let logoWidth :CGFloat = 214
        static let logoHeight : CGFloat = 62
        
        static let thumbnailWidth : CGFloat = 371
        static let thumbnailHeight : CGFloat = 450
    }
    
    struct Display {
        static let desciption : String = "Feel the adrenaline of boxing without the bruises, all to the beat of electrifying music that keeps your energy soaring."
        static let buttonHome : String = "Accept Challenge"
    }
    
    struct Color {
        static let tintColor : String = "TintColor"
    }
    
    
    struct Fonts {
       static let buttonFont = UIFont(name: "Rajdhani-Bold.ttf", size: 24)
    }
    
    struct Identifiers {
        static let tutorialTransition = "goToTutorial"
    }

}
