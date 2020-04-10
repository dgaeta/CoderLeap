//
//  AppDelegate.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import UIKit
import AWSAppSync
import AWSMobileClient

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var appSyncClient: AWSAppSyncClient?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    do {
          // You can choose the directory in which AppSync stores its persistent cache databases
    let cacheConfiguration = try AWSAppSyncCacheConfiguration()

          // Initialize the AWS AppSync configuration
          let appSyncConfig = try AWSAppSyncClientConfiguration(
            appSyncServiceConfig: AWSAppSyncServiceConfig(),
            userPoolsAuthProvider: {
              class MyCognitoUserPoolsAuthProvider : AWSCognitoUserPoolsAuthProviderAsync {
                  func getLatestAuthToken(_ callback: @escaping (String?, Error?) -> Void) {
                      AWSMobileClient.default().getTokens { (tokens, error) in
                          if error != nil {
                              callback(nil, error)
                          } else {
                              callback(tokens?.idToken?.tokenString, nil)
                          }
                      }
                  }
              }
              return MyCognitoUserPoolsAuthProvider()}(),
            cacheConfiguration: cacheConfiguration
          )
          
          // Initialize the AWS AppSync client
          appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
      } catch {
          print("Error initializing appsync client. \(error)")
      }
    
    AWSMobileClient.default().initialize { (userState, error) in
        if let userState = userState {
            switch(userState){
            case .signedIn:
              print("Signed In")
            case .signedOut:
              print("Signed Out")
            default:
                AWSMobileClient.default().signOut()
            }
            
        } else if let error = error {
            print(error.localizedDescription)
        }
    }
    
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}

