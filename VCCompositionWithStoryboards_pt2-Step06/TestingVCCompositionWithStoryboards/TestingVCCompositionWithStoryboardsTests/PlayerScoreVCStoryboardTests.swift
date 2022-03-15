//
//  PlayerScoreVCStoryboardTests.swift
//  TestingVCCompositionWithStoryboardsTests
//
//  Created by Ignasi Perez-Valls on 2/3/22.
//


import XCTest
@testable import TestingVCCompositionWithStoryboards


class PlayerScoreVCStoryboardTests: XCTestCase {
  
  // MARK: PlayerOne Storyboard tests
  
  // Test 01
  func test_PlayerScoreOneStoryboardInitialVC_isPlayerScoreVC() {
    XCTAssertTrue(
      makePlayerOneStoryboard().instantiateInitialViewController() is PlayerScoreVC
    )
  }
  
  
  // Test 02
  func test_PlayerScoreOneStoryboard_nameSetter_updatesNameLabel() {
    // GIVEN
    let vc = makePlayerScoreVC(storyboard: makePlayerOneStoryboard())
    
    
    // WHEN
    vc.name = "a name"

    // THEN
    XCTAssertEqual(vc.nameLabel?.text, "a name")
  }
  
  
  // Test 03
  func test_PlayerScoreOneStoryboard_scoreSetter_updatesScoreLabel() {
    // GIVEN
    let vc = makePlayerScoreVC(storyboard: makePlayerOneStoryboard())
    
    // WHEN
    vc.score = "a score"

    // THEN
    XCTAssertEqual(vc.scoreLabel?.text, "a score")
  }
  
  
  
  // MARK: PlayerTwo Storyboard tests
  
  // Test 01
  func test_PlayerScoreTwoStoryboardInitialVC_isPlayerScoreVC() {
    XCTAssertTrue(
      makePlayerOneStoryboard().instantiateInitialViewController() is PlayerScoreVC
    )
  }
  
  
  // Test 02
  func test_PlayerScoreTwoStoryboard_nameSetter_updatesNameLabel() {
    // GIVEN
    let vc = makePlayerScoreVC(storyboard: makePlayerTwoStoryboard())
    
    
    // WHEN
    vc.name = "a name"

    // THEN
    XCTAssertEqual(vc.nameLabel?.text, "a name")
  }
  
  
  // Test 03
  func test_PlayerScoreTwoStoryboard_scoreSetter_updatesScoreLabel() {
    // GIVEN
    let vc = makePlayerScoreVC(storyboard: makePlayerTwoStoryboard())
    
    // WHEN
    vc.score = "a score"

    // THEN
    XCTAssertEqual(vc.scoreLabel?.text, "a score")
  }
  
  
  
  // MARK: Helpers
  
  private func makePlayerOneStoryboard() -> UIStoryboard {
    return UIStoryboard(name: "PlayerScoreOne",
                        bundle: nil)
  }
  
  
  private func makePlayerTwoStoryboard() -> UIStoryboard {
    return UIStoryboard(name: "PlayerScoreTwo",
                        bundle: nil)
  }
  
  
  private func makePlayerScoreVC(storyboard: UIStoryboard) -> PlayerScoreVC {
    let vc =  storyboard.instantiateInitialViewController() as! PlayerScoreVC
    _ = vc.view
    
    return vc
  }

}
