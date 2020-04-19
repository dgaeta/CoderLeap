//
//  DragAndDropTest.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/5/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct PuzzleView: View {
  @ObservedObject var puzzleHelper: PuzzleHelper
  
  var body: some View {
    GeometryReader { proxy in
      VStack(alignment: .center) {
        ProblemStatementView()
          .frame(width: proxy.size.width, height: proxy.size.height/3)
          .shadow(color: Color(red: 0.50, green: 0.50, blue: 0.50),
          radius: 10.00, x: 0.00, y: 5)
          .padding([.bottom], 10)
        
        PuzzleViewCodeGroup(puzzleHelper: self.puzzleHelper)
        .frame(width: proxy.size.width, height: proxy.size.height/2)
        Spacer()
        
        PuzzleViewButtonGroup(puzzleHelper: self.puzzleHelper)
          .padding([.bottom], 20)
      }.background(Color.white)
    }
  }
}

// MARK: - Event Handlers
extension PuzzleView {

}

struct DragAndDropTest_Previews: PreviewProvider {
    static var previews: some View {
      PuzzleView(puzzleHelper: PuzzleHelper())
    }
}
