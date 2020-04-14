//
//  ChatHelper.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/7/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Foundation
import Combine
import AWSAppSync
import AWSMobileClient

struct Message: Hashable {
    var content: String
    var when: String
    var id: GraphQLID
}

class ChatHelper : ObservableObject {
  
  var didChange = PassthroughSubject<Void, Never>()
  
  let df = DateFormatter()
  
  @Published var realTimeMessages: [Message] = []
  
  var appSyncClient: AWSAppSyncClient?
  
  init() {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
    df.dateFormat = "yyyy-MM-dd hh:mm:ss"
  }
  
  func getMessages(chatId: String!) {
    
    appSyncClient?.fetch(query: GetChatQuery(id: chatId), cachePolicy: .fetchIgnoringCacheData) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
      
        print(result!.data?.getChat!.userEmail)
        print(chatId)
        let messagesCount = result!.data?.getChat!.messages?.items?.count
        print(messagesCount)
      
        guard let messages = result!.data?.getChat!.messages?.items else {
          print("Messages nil fetching event")
          return
        }
      
        messages.forEach {
          self.realTimeMessages.append(
            Message(content: $0!.content, when: $0!.when, id: $0!.id)
          )
      }
    }
  }
    
  func sendMessage(_ content: String, chatId: GraphQLID) {
      
    
//    let mutationInput = Create(id: idCombo, userId: username, date: self.todaysDateIsoFormat!, ozDrank: 0)
    
    let now = df.string(from: Date())
    let createInput = CreateMessageInput(chatId: chatId, content: content, when: now)
    
    
    appSyncClient?.perform(mutation: CreateMessageMutation(input: createInput)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
          print("Error occurred: \(error.localizedDescription )")
          return
        }
        if let resultError = result?.errors {
          print("Error saving the item on server: \(resultError)")
          return
        }
        
      let newMessage = Message(content: content, when: now, id: (result?.data?.createMessage!.id)!)
        self.realTimeMessages.append(newMessage)
        self.didChange.send(())
      
        print("CreateChat call successful.")
        print(result!)
    }
  }
  
  func queryChatRoom() {
    appSyncClient?.fetch(query: GetChatQuery(id: "test"))
  }
  
  func createChatRoom() {
    let createInput = CreateChatInput(userEmail: "gaeta.d@gmail.com")
    
    appSyncClient?.perform(mutation: CreateChatMutation(input: createInput)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
        }
      
        print("CreateChat call finished.")
    }
  }
}
