//
//  SwiftUIView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/17/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            Button("Tap Me!") {
                print("button pressed!")
            }.buttonStyle(CoderLeapButtonStyle(color: .blue))
        }
    }
}

struct CoderLeapButtonStyle: ButtonStyle {
    var color: Color = .green
    
    public func makeBody(configuration: CoderLeapButtonStyle.Configuration) -> some View {
        MyButton(configuration: configuration, color: color)
    }
    
    struct MyButton: View {
        let configuration: CoderLeapButtonStyle.Configuration
        let color: Color
        
        var body: some View {
            
            return configuration.label
                .foregroundColor(.white)
                .padding(15)
                .background(RoundedRectangle(cornerRadius: 20).fill(color))
                .compositingGroup()
                .shadow(color: .black, radius: 3)
                .opacity(configuration.isPressed ? 0.5 : 1.0)
        }
    }

}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
