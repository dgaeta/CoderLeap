//
//  ContentView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var usermanager: UserManager
    var body: some View {
      VStack {
        
        
        Group {
          if self.usermanager.signedIn {
            App()
          } else {
            WelcomeView()
            
           RegisterView(keyboardHandler: KeyboardFollower())
          }
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
