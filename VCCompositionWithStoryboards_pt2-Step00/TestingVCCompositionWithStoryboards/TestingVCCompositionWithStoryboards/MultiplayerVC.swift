//
//  MultiplayerVC.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 2/3/22.
//

import UIKit


final class MultiplayerVC: UIViewController {

  private(set) var players: MultiplayerScoreVC?
  
  
  override func prepare(for segue: UIStoryboardSegue,
                        sender: Any?) {
    if segue.identifier == "go_to_MultiplayerScore",
       let vc = segue.destination as? MultiplayerScoreVC {
      players = vc
    }
    
  }

}
