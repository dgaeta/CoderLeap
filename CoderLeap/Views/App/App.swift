//
//  App.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/7/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct App: View {
    var body: some View {
      NavigationView {
        VStack {
          DragAndDropTest()
        }
        .navigationBarTitle(Text("CoderLeap"), displayMode: .inline)
      }
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
        App()
    }
}
