//
//  CodePieceView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/15/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct DragablePieceView: View {
    let codeText: String
    
    var body: some View {
        Text(codeText)
            .frame(width: 150, height: 50)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.black, lineWidth: 3))
            .background(Rectangle().fill(Color.white))
            .padding(2)
            .shadow(radius: 1)
            .onDrag { return NSItemProvider(object: self.codeText  as NSString) }
    }
}

struct DragablePieceView_Previews: PreviewProvider {
    static var previews: some View {
      DragablePieceView(codeText: "Get the bread")
    }
}
