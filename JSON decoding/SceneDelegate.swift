//
//  SceneDelegate.swift
//  JSON decoding
//
//  Created by Aisaule Sibatova on 15.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        let initialViewController = ViewController()
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()
    }

}

