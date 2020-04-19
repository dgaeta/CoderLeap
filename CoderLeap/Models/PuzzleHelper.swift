//
//  PuzzleHelper.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/19/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Foundation
import Combine

class PuzzleHelper : ObservableObject {

  var didChange = PassthroughSubject<Void, Never>()
  
  @Published var dragAndDropOrder: [Int: String] = [:]
  
  @Published var showFeedback: Bool = false
  @Published var isCorrect: Bool = false
  @Published var showTryAgain: Bool = false
  
  @Published var givenBlocks = [
    0: "0Grab the other slice and apply jelly",
    1: "1Get 2 slices of bread",
    2: "2Eat sandwiche",
    3: "3Put both slices together",
    4: "4Grab a slice and apply peanut butter"
  ]

  
  func saveOrder(codeWithPosition: String, slotDropped: Int) {
    
    self.dragAndDropOrder[slotDropped] = codeWithPosition
  }
  
  func dismissFeedback() {
    self.showFeedback = false
  }
  
  func checkIfCorrect() {
    if self.dragAndDropOrder.count != self.givenBlocks.count {
      self.isCorrect = false
      self.showFeedback = true
      print("TRY AGAIN, CODER!")
      return
    }
    
    for index in 0..<self.givenBlocks.count {
      
      var userInput = self.dragAndDropOrder[index] ?? "-1"
      
      let userOrder: Int = (userInput.prefix(1) as NSString).integerValue
      
      if userOrder != index {
        self.isCorrect = false
        self.showFeedback = true
        print("TRY AGAIN, CODER!")
        return
      }
    }
    
    self.isCorrect = true
    print("YOU'RE RIGHT, CODER!")
    self.showFeedback = true
  }
  
  func resetOrder() {
    self.dragAndDropOrder = [:]
  }
}
