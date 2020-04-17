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
    "Grab the other slice and apply jelly",
    "Get 2 slices of bread",
    "Eat sandwiche",
    "Put both slices together",
    "Grab a slice and apply peanut butter"
  ]
  
  var body: some View {
    VStack(alignment: .center) {
      ProblemStatementView()
      
      HStack {
        
        VStack {
          ScrollView {
            ForEach(0..<self.givenBlocks.count) { index in
              DragablePieceView(codeText: self.givenBlocks[index])
              .padding(5)
            }
          }
          .frame(width: 190, height: 280)
          .background(Color("CoderLeap-Blue-1"))
        }
          
        VStack {
          CodeDropAreaView()
          .frame(width: 190, height: 280)
          .background(Color("CoderLeap-Gray-1"))
        }
          
      }
      // This should be the last, put everything to the top
      Spacer() 
      
      HStack {
        
        Button(action: {print("Reset")}) {
          Text("Reset")
          .foregroundColor(.white)
          .padding(15)
            .frame(width: 80)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.red))
        }

        
        Button(action: {print("Submit")}) {
          Text("Submit")
          .foregroundColor(.white)
          .padding(15)
            .frame(width: 250)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("CoderLeap-Blue-1")))
        }
      }
    }
  }
}

struct DragAndDropTest_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
    }
}
