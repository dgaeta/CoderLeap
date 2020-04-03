//
//  RegisterView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
  @State var username: String = ""
  @State var password: String = ""
  
  var body: some View {
    VStack {
      TextField("Type your username...", text: self.$username)
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
  }
  
  func registerUser() {}
  
  func loginUser() {}
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
