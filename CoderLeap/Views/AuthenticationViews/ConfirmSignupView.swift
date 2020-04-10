//
//  ConfirmSignupView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/9/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct ConfirmSignupView: View {
  @EnvironmentObject var userManager: UserManager
  @State private var confirmationCode: String = ""
  
  @State private var invalid: Bool = false
    
    var body: some View {
      VStack {
        Form {
              TextField("Confirmation Code",
                        text: self.$confirmationCode,
                        onEditingChanged: { changing in
                          if !changing {
                              self.confirmationCode = self.confirmationCode.trimmingCharacters(in: .whitespacesAndNewlines)
                          } else {
                              self.invalid = false
                          }},
                        onCommit: validate)
            
              
              if self.invalid {
                  Text("enter code")
                      .foregroundColor(.red)
                      .frame(maxWidth: .infinity)
              }
        }.textFieldStyle(RoundedBorderTextFieldStyle())
        
        Button(action: self.confirmUser) {
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
      }
    }
    
    func validate() {
        if self.confirmationCode == "" {
            self.invalid = true
        } else {
          
      }
    }
}

// MARK: - Event Handlers
extension ConfirmSignupView {

  func confirmUser() {
    userManager.confirmSignUp(signUpCodeText: self.confirmationCode)
  }
}

struct ConfirmSignupView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmSignupView()
    }
}
