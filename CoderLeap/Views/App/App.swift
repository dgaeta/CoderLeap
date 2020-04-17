//
//  App.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/7/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct App: View {
  @EnvironmentObject var userManager: UserManager
  
    var body: some View {
      NavigationView {

        TabView {
            PuzzleView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Puzzles")
            }.background(Color.white)

          ChatView(email: userManager.profile.email, chatId: userManager.profile.supportChatId)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Chat")
                }
              .environmentObject(self.userManager)
        }
        .navigationBarTitle(Text("CoderLeap"), displayMode: .inline)
        .navigationBarItems(leading:
          Button("Sign out") {
            self.userManager.signOut()
          })
      }
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
      App()
      .environmentObject(UserManager())
    }
}
