//
//  DragAndDropTest.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/5/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct PuzzleView: View {
  @State private var givenBlocks = [
    0: "Grab the other slice and apply jelly",
    1: "Get 2 slices of bread",
    2: "Eat sandwiche",
    3: "Put both slices together",
    4: "Grab a slice and apply peanut butter"
  ]
  
  var body: some View {
    GeometryReader { proxy in
      VStack(alignment: .center) {
        ProblemStatementView()
          .frame(width: proxy.size.width, height: proxy.size.height/3)
        
        PuzzleViewCodeGroup(givenBlocks: self.givenBlocks)
        .frame(width: proxy.size.width, height: proxy.size.height/2)
        Spacer()
        
        PuzzleViewButtonGroup()
      }.background(Color.white)
    }
  }
}

struct DragAndDropTest_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
    }
}
