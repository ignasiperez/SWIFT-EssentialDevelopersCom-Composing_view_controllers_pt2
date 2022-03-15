//
//  TimeBarVC.swift
//  TestingVCCompositionWithStoryboards
//
//  Created by Ignasi Perez-Valls on 3/3/22.
//

import UIKit

class TimeBarVC: UIViewController {

  @IBOutlet private weak var barView: UIView?
    
    var progress: Float = 1 {
      didSet { /* Update bar frame */ }
    }

}
