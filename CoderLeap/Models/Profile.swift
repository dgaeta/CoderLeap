//
//  Profile.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Foundation

struct Profile : Codable {
  var email: String
  var firstName: String
  var lastName: String
  var prefersNotifications: Bool
  var supportChatId: String
  
  static let `default` = Self(email: "username", prefersNotifications: true)
  
  init() {
    self.email = ""
    self.firstName = ""
    self.lastName = ""
    self.prefersNotifications = true
    self.supportChatId = ""
  }
  
  init(email: String, prefersNotifications: Bool = true) {
    self.email = email
    self.firstName = ""
    self.lastName = ""
    self.prefersNotifications = prefersNotifications
    self.supportChatId = ""
  }
}
