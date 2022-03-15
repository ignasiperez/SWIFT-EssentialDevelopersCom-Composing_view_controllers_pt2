//
//  SinglePlayerVCStoryboardConfiguration.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 15/3/22.
//

import UIKit


final class SinglePlayerVCStoryboardConfiguration: NSObject {
  var observation: NSKeyValueObservation?
  
  @IBOutlet private weak var player: UIViewController? {
    didSet {
      observation = player?.observe(\.parent) { player, changes in
        if let singlePlayerController = player.parent as? SinglePlayerVC {
          singlePlayerController.player = player as? PlayerScoreVC
        }
      }
    }
  }
}
