//
//  WelcomeView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
      HStack {
        LogoImageView()
        
        VStack(alignment: .leading) {
          Text("Welcome to")
            .font(.headline)
            .bold()
            .bordered()
          Text("CoderLeap")
            .font(.largeTitle)
            .bold()
            .bordered()
        }
        .foregroundColor(.black)
        .lineLimit(2)
        .multilineTextAlignment(.leading)
        .padding(.horizontal)
      }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
