//
//  PuzzleViewCodeGroup.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/18/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct PuzzleViewCodeGroup: View {
  @State var givenBlocks: [Int: String]
  
    var body: some View {
        HStack {
          
          VStack {
            ScrollView {
              ForEach(0..<self.givenBlocks.count) { index in
                DragablePieceView(codeText: self.givenBlocks[index]!)
                .padding(5)
              }
            }
            .background(Color("CoderLeap-Blue-1"))
          }
            
          VStack {
            CodeDropAreaView(numberOfPlaceholders: self.givenBlocks.count)
            .background(Color("CoderLeap-Gray-1"))
          }
            
        }
    }
}

struct PuzzleViewCodeGroup_Previews: PreviewProvider {

    static var previews: some View {
      PuzzleViewCodeGroup(givenBlocks: [0:
          "Grab the other slice and apply jelly",
                                        1: "Get 2 slices of bread",
                                        2: "Eat sandwiche",
                                        3: "Put both slices together",
                                        4: "Grab a slice and apply peanut butter"
        ])
    }
}
