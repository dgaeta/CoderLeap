//
//  ChatHelper.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/7/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Foundation
import Combine

struct Message: Hashable {
    var content: String
    var userId: String
}

class ChatHelper : ObservableObject {
  
    var didChange = PassthroughSubject<Void, Never>()
  
  @Published var realTimeMessages: [Message] = []
    
    func sendMessage(_ chatMessage: Message) {
        realTimeMessages.append(chatMessage)
        didChange.send(())
    }
}
