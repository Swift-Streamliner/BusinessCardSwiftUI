//
//  InfoView.swift
//  BusinessCard
//
//  Created by Tiger Mei on 29.10.2020.
//  Copyright © 2020 Tiger Mei. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body : some View {
        RoundedRectangle(cornerRadius: 25)
        .fill(Color.white)
        .frame(height: 50)
        .overlay(HStack {
            Image(systemName: imageName).foregroundColor(.green)
            Text(text)
        })
        .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+44 123 456 789", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
