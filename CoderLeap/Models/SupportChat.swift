//
//  SupportChat.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/10/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Foundation
import AWSCore
import AWSAppSync

struct SupportChat: Identifiable {
  var id: ID
  var userId: String
  var Messages: [Message]
}


