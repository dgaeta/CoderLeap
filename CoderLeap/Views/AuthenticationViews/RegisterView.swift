//
//  RegisterView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
  @EnvironmentObject var userManager: UserManager
  @ObservedObject var keyboardHandler: KeyboardFollower
  
  @State var email: String = ""
  @State var password: String = ""
  
  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }
  
  var body: some View {
    VStack {
      TextField("Type your username...", text: self.$email)
        .foregroundColor(.black)
        .bordered()
      
      TextField("Type your new password...", text: self.$password)
        .foregroundColor(.black)
        .bordered()
      
      Button(action: self.registerUser) {
        HStack {
          Image(systemName: "checkmark")
            .resizable()
            .frame(width: 16, height: 16, alignment: .center)
          Text("Signup")
            .font(.body)
            .bold()
        }
      }
      .bordered()
      
      Button(action: self.loginUser) {
        HStack {
          Image(systemName: "checkmark")
            .resizable()
            .frame(width: 16, height: 16, alignment: .center)
          Text("Login")
            .font(.body)
            .bold()
        }
      }
      .bordered()
    }
    .padding(.bottom, keyboardHandler.keyboardHeight)
    .padding()
  }
}

// MARK: - Event Handlers
extension RegisterView {

  func registerUser() {
    userManager.signUp(email: email,
                       password: password)
  }
  
  func loginUser() {
    userManager.login(email: email,
                       password: password)
  }
}

struct RegisterView_Previews: PreviewProvider {
  static let userManager = UserManager(email: "DanTestX")
  
    static var previews: some View {
        RegisterView(keyboardHandler: KeyboardFollower())
        .environmentObject(userManager)
    }
}
