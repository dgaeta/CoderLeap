//
//  UserManager.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import Combine
import SwiftUI
import Foundation
import AWSMobileClient

final class UserManager: ObservableObject {
  @Published var profile: Profile
  @Published var signedIn: Bool
  @Published var unconfirmed: Bool
  
  var isRegistered: Bool {
    return profile.username.isEmpty == true
  }
  
  init() {
    profile = Profile(username: "")
    self.signedIn = false
    self.unconfirmed = false
  }
  
  init(username: String) {
    self.profile = Profile(username: username)
    self.signedIn = false
    self.unconfirmed = false
  }
  
  func persistProfile() {
    UserDefaults.standard.set(try? PropertyListEncoder().encode(profile), forKey: "user-profile")
  }
  
  func signOut() {
    clear()
    AWSMobileClient.default().signOut()
    self.profile.username = ""
    self.signedIn = false
  }
  
  func confirmSignUp(signUpCodeText: String) {
    AWSMobileClient.default().confirmSignUp(username: self.profile.username, confirmationCode: signUpCodeText) { (signUpResult, error) in
        if let signUpResult = signUpResult {
            switch(signUpResult.signUpConfirmationState) {
            case .confirmed:
                print("User is signed up and confirmed.")
              DispatchQueue.main.async {
                self.signedIn = true
                self.unconfirmed = false
              }
            case .unconfirmed:
                print("User is not confirmed and needs verification via \(signUpResult.codeDeliveryDetails!.deliveryMedium) sent at \(signUpResult.codeDeliveryDetails!.destination!)")
                
            case .unknown:
                print("Unexpected case")
            }
        } else if let error = error {
            print("\(error.localizedDescription)")
        }
    }

  }
  
  func signUp(username: String, password: String) {
    AWSMobileClient.default().signUp(username: username, password: password
    ) { (signUpResult, error) in
        if let signUpResult = signUpResult {
            switch(signUpResult.signUpConfirmationState) {
            case .confirmed:
                print("User is signed up and confirmed.")
              
              DispatchQueue.main.async {
                self.profile.username = username
                self.persistProfile()
                self.signedIn = true
              }
            case .unconfirmed:
                DispatchQueue.main.async {
                  self.profile.username = username
                  self.unconfirmed = true
                }
                print("User is not confirmed and no verification is set up at the moment:  \(signUpResult).")
                
            case .unknown:
                print("Unexpected case")
            }
          
          
        } else if let error = error {
          print("ERROR ON SIGNUP")
            if let error = error as? AWSMobileClientError {
                let printableMessage: String
                switch error {
                case .aliasExists(let message): printableMessage = message
                case .codeDeliveryFailure(let message): printableMessage = message
                case .codeMismatch(let message): printableMessage = message
                case .expiredCode(let message): printableMessage = message
                case .groupExists(let message): printableMessage = message
                case .internalError(let message): printableMessage = message
                case .invalidLambdaResponse(let message): printableMessage = message
                case .invalidOAuthFlow(let message): printableMessage = message
                case .invalidParameter(let message): printableMessage = message
                case .invalidPassword(let message): printableMessage = message
                case .invalidUserPoolConfiguration(let message): printableMessage = message
                case .limitExceeded(let message): printableMessage = message
                case .mfaMethodNotFound(let message): printableMessage = message
                case .notAuthorized(let message): printableMessage = message
                case .passwordResetRequired(let message): printableMessage = message
                case .resourceNotFound(let message): printableMessage = message
                case .scopeDoesNotExist(let message): printableMessage = message
                case .softwareTokenMFANotFound(let message): printableMessage = message
                case .tooManyFailedAttempts(let message): printableMessage = message
                case .tooManyRequests(let message): printableMessage = message
                case .unexpectedLambda(let message): printableMessage = message
                case .userLambdaValidation(let message): printableMessage = message
                case .userNotConfirmed(let message): printableMessage = message
                case .userNotFound(let message): printableMessage = message
                case .usernameExists(let message): printableMessage = message
                case .unknown(let message): printableMessage = message
                case .notSignedIn(let message): printableMessage = message
                case .identityIdUnavailable(let message): printableMessage = message
                case .guestAccessNotAllowed(let message): printableMessage = message
                case .federationProviderExists(let message): printableMessage = message
                case .cognitoIdentityPoolNotConfigured(let message): printableMessage = message
                case .unableToSignIn(let message): printableMessage = message
                case .invalidState(let message): printableMessage = message
                case .userPoolNotConfigured(let message): printableMessage = message
                case .userCancelledSignIn(let message): printableMessage = message
                case .badRequest(let message): printableMessage = message
                case .expiredRefreshToken(let message): printableMessage = message
                case .errorLoadingPage(let message): printableMessage = message
                case .securityFailed(let message): printableMessage = message
                case .idTokenNotIssued(let message): printableMessage = message
                case .idTokenAndAcceessTokenNotIssued(let message): printableMessage = message
                case .invalidConfiguration(let message): printableMessage = message
                case .deviceNotRemembered(let message): printableMessage = message
                }
                print("error: \(error); message: \(printableMessage)")
            }
            print("\(error.localizedDescription)")
        }
    }
  }
  
  func login(username: String, password: String) {
    print("\(username) \(password)")
    AWSMobileClient.default().signIn(username: username, password: password
    ) { (signInResult, error) in
      if let error = error as? AWSMobileClientError {
                      print(error.localizedDescription)
        print("\(AWSMobileClientError.cognitoIdentityPoolNotConfigured(message: error.localizedDescription))")
        let newError = AWSMobileClientError.makeMobileClientError(from: error)
        
        print(newError)
      }
      
        if let error = error  {
            print("\(error.localizedDescription)")
        } else if let signInResult = signInResult {
            switch (signInResult.signInState) {
            case .signedIn:
                print("User is signed in.")
              self.profile.username = username
              self.persistProfile()
              self.signedIn = true
            case .smsMFA:
                print("SMS message sent to \(signInResult.codeDetails!.destination!)")
            default:
                print("Sign In needs info which is not et supported.")
            }
        }
    }
  }
  
  func load() {
    if let data = UserDefaults.standard.value(forKey: "user-profile") as? Data {
      if let profile = try? PropertyListDecoder().decode(Profile.self, from: data) {
        self.profile = profile
        self.signedIn = true
        print(profile)
      }
    }
  }
  
  func clear() {
    UserDefaults.standard.removeObject(forKey: "user-profile")
  }
}
