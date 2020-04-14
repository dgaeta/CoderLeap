//
//  ChatView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/7/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct ChatView: View {
  @State var typingMessage: String = ""
  @ObservedObject var chatHelper: ChatHelper
  var email: String
  var chatId: String
  
  init(email: String, chatId: String) {
    UITableView.appearance().tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 1))
    self.email = email
    self.chatId = chatId
    self.chatHelper = ChatHelper()
    self.chatHelper.getMessages(chatId: self.chatId)
  }
  
    var body: some View {
      NavigationView {
        VStack {
           List {
               ForEach(chatHelper.realTimeMessages, id: \.self) { msg in
                MessageView(currentMessage: msg)
                }
          }
           HStack {
               TextField("Message...", text: $typingMessage)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .frame(minHeight: CGFloat(30))
            Button(action: self.sendMessage) {
                    Text("Send")
                 }
            }.frame(minHeight: CGFloat(50)).padding()
        }
        .navigationBarTitle(Text("CoderLeap Mentor - Dan G."), displayMode: .inline)
      }
        
    }
  
  func sendMessage() {
    chatHelper.sendMessage(typingMessage, chatId: self.chatId)
    typingMessage = ""
  }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
      ChatView(email: "gaeta.d@gmail.com", chatId: "xxxxxx")
        .environmentObject(ChatHelper())
    }
}
