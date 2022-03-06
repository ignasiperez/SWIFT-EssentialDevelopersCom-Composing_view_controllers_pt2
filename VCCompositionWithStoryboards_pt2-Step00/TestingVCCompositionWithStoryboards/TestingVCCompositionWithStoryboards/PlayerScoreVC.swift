//
//  PlayerScoreVC.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 2/3/22.
//

import UIKit

final class PlayerScoreVC: UIViewController {
  @IBOutlet private weak var nameLabel: UILabel?
  @IBOutlet private weak var scoreLabel: UILabel?
  
  
  var name: String? {
    set { nameLabel?.text = newValue }
    get { return nameLabel?.text }
  }
  
  
  var score: String? {
    set { scoreLabel?.text = newValue }
    get { return scoreLabel?.text }
  }
  
}

