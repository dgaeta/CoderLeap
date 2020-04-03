//
//  LogoImageView.swift
//  CoderLeap
//
//  Created by Daniel Gaeta on 4/3/20.
//  Copyright © 2020 CoderLeap, Corp. All rights reserved.
//

import SwiftUI

struct LogoImageView: View {
    var body: some View {
        Image("CoderLeap-Logo-1")
        .resizable()
        .frame(width: 100, height: 100, alignment: .center)
        .border(Color.gray, width: 1)
        .background(Color(white: 0.9))
        .clipShape(Rectangle())
        .foregroundColor(.blue)
    }
}

struct LogoImageView_Previews: PreviewProvider {
    static var previews: some View {
        LogoImageView()
    }
}
