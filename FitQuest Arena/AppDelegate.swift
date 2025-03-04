//
//  AppDelegate.swift
//  FitQuest Arena
//
//  Created by Swan Nay Phue Aung on 01/07/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

       func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
           let window = UIWindow(frame: UIScreen.main.bounds)
           let storyboard = UIStoryboard(name: "Home", bundle: nil)
           
           if let initialViewController = storyboard.instantiateInitialViewController() {
               
               let navController = UINavigationController(rootViewController: initialViewController)
               window.rootViewController = navController
               self.window = window
               window.makeKeyAndVisible()
               
           }
           
           return true
      
       }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

