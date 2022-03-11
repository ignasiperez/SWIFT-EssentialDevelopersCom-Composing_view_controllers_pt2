//
//  PlayerScoreVCStoryboardTests.swift
//  TestingVCCompositionWithStoryboardsTests
//
//  Created by Ignasi Perez-Valls on 2/3/22.
//


import XCTest
@testable import TestingVCCompositionWithStoryboards


class PlayerScoreVCStoryboardTests: XCTestCase {
  
  // Test 01
  func test_PlayerScoreOneStoryboardInitialVC_isPlayerScoreVC() {
    let storyboard = UIStoryboard(name: "PlayerScoreOne",
                                  bundle: nil)
    
    XCTAssertTrue(
      storyboard.instantiateInitialViewController() is PlayerScoreVC
    )
  }
  
  
  // Test 02
  func test_PlayerScoreOneStoryboard_nameSetter_updatesNameLabel() {
    // GIVEN
    let storyboard = UIStoryboard(name: "PlayerScoreOne",
                                  bundle: nil)
    let vc =  storyboard.instantiateInitialViewController() as! PlayerScoreVC
    _ = vc.view
    
    // WHEN
    vc.name = "a name"

    // THEN
    XCTAssertEqual(vc.nameLabel?.text, "a name")
  }
  
  
  // Test 03
  func test_PlayerScoreOneStoryboard_scoreSetter_updatesScoreLabel() {
    // GIVEN
    let storyboard = UIStoryboard(name: "PlayerScoreOne",
                                  bundle: nil)
    let vc =  storyboard.instantiateInitialViewController() as! PlayerScoreVC
    _ = vc.view
    
    // WHEN
    vc.score = "a score"

    // THEN
    XCTAssertEqual(vc.scoreLabel?.text, "a score")
  }

}
