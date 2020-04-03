//
//  Profile.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Foundation

struct Profile : Codable {
  var username: String
  var firstName: String
  var lastName: String
  var prefersNotifications: Bool
  
  static let `default` = Self(username: "username", prefersNotifications: true)
  
  init() {
    self.username = ""
    self.firstName = ""
    self.lastName = ""
    self.prefersNotifications = true
  }
  
  init(username: String, prefersNotifications: Bool = true) {
    self.username = username
    self.firstName = ""
    self.lastName = ""
    self.prefersNotifications = prefersNotifications
  }
}
