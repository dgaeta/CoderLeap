//
//  PuzzleViewCodeGroup.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/18/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct PuzzleViewCodeGroup: View {
  @ObservedObject var puzzleHelper: PuzzleHelper
  
    var body: some View {
      GeometryReader { proxy in
        HStack {
            
            VStack {
              ScrollView {
                ForEach(0..<self.puzzleHelper.givenBlocks.count) { index in
                  DragablePieceView(codeText: self.puzzleHelper.givenBlocks[index]!)
                  .padding(5)
                }
              }
              .frame(width: (proxy.size.width/2) - 20)
              .background(Color("CoderLeap-Blue-1"))
              .padding([.leading], 20)
              
            }
              
            VStack {
              CodeDropAreaView(puzzleHelper: self.puzzleHelper, numberOfPlaceholders: self.puzzleHelper.givenBlocks.count)
              .frame(width: (proxy.size.width/2) - 20)
              .background(Color("CoderLeap-Gray-1"))
              .padding([.trailing], 20)
            }
              
        }
      }
    }
}

struct PuzzleViewCodeGroup_Previews: PreviewProvider {

    static var previews: some View {
      PuzzleViewCodeGroup(puzzleHelper: PuzzleHelper())
    }
}
