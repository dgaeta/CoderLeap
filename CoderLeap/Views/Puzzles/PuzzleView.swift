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
      VStack(alignment: .leading) {
        Text("Problem Statement")
          
          .font(.custom("Silom", size: 40))
          .multilineTextAlignment(.leading)
          .padding([.bottom])
          .frame(width: 350)
          .clipShape(Rectangle())
          .background(Color.black)
          .foregroundColor(Color.white)
          .shadow(radius: 3)
        
        Text("> You and your robot, Cody, have crash landed on Mars and you're both excited to begin  your research")
          .font(.caption)
          .multilineTextAlignment(.leading)
          .padding([.bottom])
          .frame(width: 350)
          .clipShape(Rectangle())
          .background(Color.black)
          .foregroundColor(Color.white)
          .shadow(radius: 3)
        
        Text("> Cody would like to celebrate by making you your favorite snack... a PB&J sandwich.")
        .font(.caption)
        .multilineTextAlignment(.leading)
          .padding([.bottom])
        .frame(width: 350)
        .clipShape(Rectangle())
        .background(Color.black)
        .foregroundColor(Color.white)
          .shadow(radius: 3)
        
        Text("> But Cody doesnt know how to make sandwiches and needs you to write the code for him to execute it.")
          .font(.caption)
          .multilineTextAlignment(.leading)
          .padding([.bottom])
          .frame(width: 350)
          .clipShape(Rectangle())
          .background(Color.black)
          .foregroundColor(Color.white)
          .shadow(radius: 3)
          
        
        Text("Drag the code blocks on the left to the code editor on the right and into the correct order. Good luck, Coder!")
          .font(.caption)
          .padding([.bottom])
          .frame(width: 350)
          .clipShape(Rectangle())
          .background(Color.black)
          .foregroundColor(Color.white)
          .shadow(radius: 3)
      }
      
      HStack {
        
        VStack {
          ScrollView {
            ForEach(0..<self.givenBlocks.count) { index in
              DragablePieceView(codeText: self.givenBlocks[index])
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
    }
  }
}

struct DragAndDropTest_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
    }
}
