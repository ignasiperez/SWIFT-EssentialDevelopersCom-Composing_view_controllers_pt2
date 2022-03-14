//
//  SinglePlayerVC.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 2/3/22.
//

import UIKit

final class SinglePlayerVC: UIViewController {

//  @IBOutlet private weak var player: PlayerScoreVC?
  var player: PlayerScoreVC? {
    return children.compactMap { $0 as? PlayerScoreVC }.first
  }
  
}
