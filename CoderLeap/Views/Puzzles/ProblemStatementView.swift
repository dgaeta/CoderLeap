//
//  ProblemStatementView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/17/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct ProblemStatementView: View {
    var body: some View {
      VStack {
        VStack(alignment: .leading) {
            Text("Problem Statement")
              .font(.custom("Silom", size: 40))
              .multilineTextAlignment(.center)
              .padding()
              .foregroundColor(Color.white)
        }
        
        VStack(alignment: .leading) {
            Text("> You and your robot, Cody, have crash landed on Mars and you're both excited to begin your research")
                .font(.caption)
                .multilineTextAlignment(.leading)
                .padding([.bottom])
              .foregroundColor(Color.white)
            
            Text("> Cody would like to celebrate by making you your favorite snack... a PB&J sandwich.")
              .font(.caption)
              .multilineTextAlignment(.leading)
                .padding([.bottom])
              .foregroundColor(Color.white)
              
              Text("> But Cody doesnt know how to make sandwiches and needs you to write the code for him to execute it.")
                .font(.caption)
                .multilineTextAlignment(.leading)
                .padding([.bottom])
                .foregroundColor(Color.white)
                
              
              Text("Drag the code blocks on the left to the code editor on the right and into the correct order. Good luck, Coder!")
                .font(.caption)
                .padding([.bottom])
                .foregroundColor(Color.white)
            }
          }
           .background(Color.black)

    }
}

struct ProblemStatementView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemStatementView()
    }
}
