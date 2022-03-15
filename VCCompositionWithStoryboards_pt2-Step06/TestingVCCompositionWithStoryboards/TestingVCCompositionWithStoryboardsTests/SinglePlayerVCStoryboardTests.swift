//
//  SinglePlayerVCStoryboardTests.swift
//  TestingVCCompositionWithStoryboardsTests
//
//  Created by Ignasi Perez-Valls on 14/3/22.
//

import XCTest
@testable import TestingVCCompositionWithStoryboards

class SinglePlayerVCStoryboardTests: XCTestCase {

  let storyboard = UIStoryboard(name: "SinglePlayerGame",
                                bundle: nil)
  
  // Test 04
  func test_SinglePlayerGameStoryboardInitialVC_isSinglePlayerVC() {
    // GIVEN
    
    
    // THEN
    XCTAssertTrue(
      storyboard.instantiateInitialViewController() is SinglePlayerVC
    )
    
  }
  
  
  // Test 05
  func test_SinglePlayerGameStoryboard_setsUpPlayerForSinglePlayerVC() {
    // GIVEN
    
    // WHEN
    let vc = storyboard.instantiateInitialViewController() as! SinglePlayerVC
    _ = vc.view
    
    XCTAssertNotNil(vc.player)
  }

}
