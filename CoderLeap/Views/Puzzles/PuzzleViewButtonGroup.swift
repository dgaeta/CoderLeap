//
//  PuzzleViewButtonGroup.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/18/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct PuzzleViewButtonGroup: View {
    var body: some View {
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

struct PuzzleViewButtonGroup_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleViewButtonGroup()
    }
}
