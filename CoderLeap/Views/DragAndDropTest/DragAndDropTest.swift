//
//  DragAndDropTest.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/5/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct DragableImage: View {
    let codeText: String
    
    var body: some View {
        Text(codeText)
            .frame(width: 200, height: 50)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
            .padding(2)
            .overlay(Rectangle().strokeBorder(Color.black.opacity(0.1)))
            .shadow(radius: 3)
            .padding(4)
          .onDrag { return NSItemProvider(object: self.codeText  as NSString) }
    }
}

struct DroppableArea: View {
    @State private var codeBlocks: [Int: String] = [:]
    @State private var active = 0
    
    var body: some View {
      let dropDelegate = MyDropDelegate(codeBlocks: $codeBlocks, active: $active)
        
        return VStack {
          VStack(spacing: 10) {

                GridCell(active: self.active == 1, codeBlock: codeBlocks[1])
              
                GridCell(active: self.active == 2, codeBlock: codeBlocks[2])

                  GridCell(active: self.active == 3, codeBlock: codeBlocks[3])

                  GridCell(active: self.active == 4, codeBlock: codeBlocks[4])
                
                  GridCell(active: self.active == 5, codeBlock: codeBlocks[5])
                
            }
            
        }
        .background(Rectangle().fill(Color.gray))
        .onDrop(of: ["public.plain-text"], delegate: dropDelegate)
        
    }
  
  struct GridCell: View {
      let active: Bool
      let codeBlock: String?
      
      var body: some View {
        let code = Text(codeBlock != nil ? "\(codeBlock!)" : "")
              .frame(width: 200, height: 50)
          
          return Rectangle()
              .fill(self.active ? Color.green : Color.clear)
              .frame(width: 200, height: 50)
              .overlay(code)
      }
  }
  
  struct MyDropDelegate: DropDelegate {
      @Binding var codeBlocks: [Int: String]
      @Binding var active: Int
      
      func validateDrop(info: DropInfo) -> Bool {
          return info.hasItemsConforming(to: ["public.plain-text"])
      }
      
      func dropEntered(info: DropInfo) {
          // NSSound(named: "Morse")?.play()
      }
      
      func performDrop(info: DropInfo) -> Bool {
          // NSSound(named: "Submarine")?.play()
          
          let gridPosition = getGridPosition(location: info.location)
          self.active = gridPosition
          
          if let item = info.itemProviders(for: ["public.plain-text"]).first {
              item.loadItem(forTypeIdentifier: "public.plain-text", options: nil) { (codeData, error) in
                  DispatchQueue.main.async {
                      if let codeData = codeData as? Data {
                        self.codeBlocks[gridPosition] = String(data: codeData, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
                        self.active = 0
                      }
                  }
              }
              
              return true
              
          } else {
              return false
          }

      }
      
      func dropUpdated(info: DropInfo) -> DropProposal? {
          self.active = getGridPosition(location: info.location)
                      
          return nil
      }
      
      func dropExited(info: DropInfo) {
          self.active = 0
      }
      
      func getGridPosition(location: CGPoint) -> Int {
          if location.y <= 450 {
              return 1
          } else if location.y <= 500 {
              return 2
          } else if location.y <= 550 {
              return 3
          } else if location.y <= 600 {
              return 4
          } else if location.y <= 650 {
              return 5
          }
          else {
              return 0
          }
      }
  }
}

struct DragAndDropTest: View {
  @State private var givenBlocks = [
    "x = 30",
    "if x < 45:",
    "print(\"x is less than 45\")",
    "else:",
    "print(\"x is more than 45\")"
  ]
  
  var body: some View {
    HStack(spacing: 10) {
      
      VStack(spacing: 10) {
        ScrollView {
          ForEach(0..<self.givenBlocks.count) { index in
            DragableImage(codeText: self.givenBlocks[index])
          }
        }
      }.frame(width: 200, height: 350)
      
      DroppableArea()
      .frame(width: 200, height: 350)
        
    }.padding(40)
  }
}

struct DragAndDropTest_Previews: PreviewProvider {
    static var previews: some View {
        DragAndDropTest()
    }
}
