//
//  MessageView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/7/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct MessageView: View {
  var currentMessage: Message
  
    var body: some View {
      HStack(alignment: .bottom, spacing: 15) {
           Image("my-avatar")
                     .resizable()
                     .frame(width: 40, height: 40, alignment: .center)
                     .cornerRadius(20)
        ContentMessageView(contentMessage: currentMessage.content,
                              isCurrentUser: false)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(currentMessage: Message(content: "So, I think the best thing to do is focus on the fundamentals and then move on to specialized content", userId: ""))
    }
}
