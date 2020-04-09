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
    var userId: String
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
    
  func sendMessage(_ chatMessage: Message) {
      realTimeMessages.append(chatMessage)
      didChange.send(())
    
//    let mutationInput = Create(id: idCombo, userId: username, date: self.todaysDateIsoFormat!, ozDrank: 0)
    
    let now = df.string(from: Date())
    let createInput = CreateMessageInput(chatId: "testID", content: "Wassupp", when: now)
    
    appSyncClient?.perform(mutation: CreateMessageMutation(input: createInput)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
      
        print("CreateChat call successful.")
        print(result!)
    }
  }
  
  func queryChatRoom() {
    appSyncClient?.fetch(query: GetChatQuery(id: "test"))
  }
  
  func createChatRoom() {
    let createInput = CreateChatInput(userId: "gaeta.d@gmail.com")
    
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
