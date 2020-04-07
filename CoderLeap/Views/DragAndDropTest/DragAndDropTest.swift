//
//  DragAndDropTest.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/5/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct DragAndDropTest: View {
  var body: some View {
    HStack(spacing: 10) {
      VStack(spacing: 10) {
        DragableImage(codeText: "FOR LOOP 1")
        
        DragableImage(codeText: "get statement")
      }.padding(50)
      
      DroppableArea()
      .padding(20)
    }.padding(40)
  }
  
  
  struct DragableImage: View {
      let codeText: String
      
      var body: some View {
          Text(codeText)
              .frame(width: 150, height: 150)
              .clipShape(Circle())
              .overlay(Circle().stroke(Color.white, lineWidth: 2))
              .padding(2)
              .overlay(Circle().strokeBorder(Color.black.opacity(0.1)))
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
              VStack {
                  GridCell(active: self.active == 1, codeBlock: codeBlocks[1])
                  
                  GridCell(active: self.active == 2, codeBlock: codeBlocks[2])

                  GridCell(active: self.active == 3, codeBlock: codeBlocks[3])

                  GridCell(active: self.active == 4, codeBlock: codeBlocks[4])
              }
              
          }
          .background(Rectangle().fill(Color.gray))
          .frame(width: 200, height: 300)
          .onDrop(of: ["public.plain-text"], delegate: dropDelegate)
          
      }
  }
  
  struct GridCell: View {
      let active: Bool
      let codeBlock: String?
      
      var body: some View {
        let img = Text(codeBlock != nil ? "\(codeBlock!)" : "")
              .frame(width: 150, height: 150)
          
          return Rectangle()
              .fill(self.active ? Color.green : Color.clear)
              .frame(width: 150, height: 150)
              .overlay(img)
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
          if location.y <= 300 {
              return 1
          } else if location.y <= 450 {
              return 2
          } else if location.y <= 600 {
              return 3
          } else if location.y <= 750 {
              return 4
          } else {
              return 0
          }
      }
  }
}

struct DragAndDropTest_Previews: PreviewProvider {
    static var previews: some View {
        DragAndDropTest()
    }
}
