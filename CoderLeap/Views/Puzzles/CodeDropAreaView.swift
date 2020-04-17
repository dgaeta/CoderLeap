//
//  CodeDropAreaView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/15/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct CodeDropAreaView: View {
    @State private var codeBlocks: [Int: String] = [:]
    @State private var active = 0
    
    var body: some View {
      let dropDelegate = MyDropDelegate(codeBlocks: $codeBlocks, active: $active)
        
        return VStack {
          ScrollView{
            DropablePlaceHolder(active: self.active == 1, codeBlock: codeBlocks[1])
            
              DropablePlaceHolder(active: self.active == 2, codeBlock: codeBlocks[2])

              DropablePlaceHolder(active: self.active == 3, codeBlock: codeBlocks[3])

              DropablePlaceHolder(active: self.active == 4, codeBlock: codeBlocks[4])
            
              DropablePlaceHolder(active: self.active == 5, codeBlock: codeBlocks[5])
          }            
        }
        .background(Color("CoderLeap-Gray-1"))
        .onDrop(of: ["public.plain-text"], delegate: dropDelegate)
        
    }
  
  struct DropablePlaceHolder: View {
      let active: Bool
      let codeBlock: String?
      
      var body: some View {
        let code = Text(codeBlock != nil ? "\(codeBlock!)" : "")
              .frame(width: 160, height: 50)
          
          return Rectangle()
              .fill(self.active ? Color.green : Color("CoderLeap-Gray-2"))
              .frame(width: 170, height: 60)
              .overlay(Rectangle().stroke(Color.gray, lineWidth: 3))
              .background(Rectangle().fill(Color.white))
              .padding(5)
              .shadow(radius: 1)
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
          if location.y <= 540 {
              return 1
          } else if location.y <= 590 {
              return 2
          } else if location.y <= 640 {
              return 3
          } else if location.y <= 690 {
              return 4
          } else if location.y <= 740 {
              return 5
          }
          else {
              return 0
          }
      }
  }
}

struct CodeDropAreaView_Previews: PreviewProvider {
    static var previews: some View {
        CodeDropAreaView()
    }
}
