//
//  SceneDelegate.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 2/3/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  
  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let _ = (scene as? UIWindowScene) else { return }
    
    print("\n\nFunction: \(#function)")
    print(" - window: \(String(describing: window))")
    print(" - window?.rootViewController: \(String(describing: window?.rootViewController))")
    if let views = (window?.rootViewController as? UITabBarController)?.viewControllers,
       let single = views[0] as? SinglePlayerVC,
       let multi = views[1] as? MultiplayerVC,
    let timed = views[2] as? TimedMultiplayerVC {
      print(" - views: \(views)")
      _ = single.view
      _ = multi.view
      _ = timed.view
      
      single.player?.name = "Test!"
      multi.players?.playerOne?.name = "Test 1"
      multi.players?.playerTwo?.name = "Test 2"
      
      timed.players?.playerOne?.name = "Test 3"
      timed.players?.playerTwo?.name = "Test 4"
    }
    
  }
  
  
  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
  }
  
  func sceneDidBecomeActive(_ scene: UIScene) {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
  }
  
  func sceneWillResignActive(_ scene: UIScene) {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
  }
  
  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }
  
  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }
  
  
}

