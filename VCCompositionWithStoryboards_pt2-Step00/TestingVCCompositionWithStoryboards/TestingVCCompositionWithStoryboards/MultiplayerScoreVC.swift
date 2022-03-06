//
//  MultiplayerScoreVC.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 4/3/22.
//

import UIKit


class MultiplayerScoreVC: UIViewController {

  private(set) var playerOne: PlayerScoreVC?
  private(set) var playerTwo: PlayerScoreVC?


  override func prepare(for segue: UIStoryboardSegue,
                        sender: Any?) {
    if segue.identifier == "go_to_PlayerScoreOne",
       let vc = segue.destination as? PlayerScoreVC {
      playerOne = vc
    }
    else if segue.identifier == "go_to_PlayerScoreTwo",
            let vc = segue.destination as? PlayerScoreVC {
      playerTwo = vc
    }
    
  }

}
