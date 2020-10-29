//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tiger Mei on 29.10.2020.
//  Copyright © 2020 Tiger Mei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("catdog")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Tiger")
                    .font(Font.custom("PasseroOne-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOs Developer")
                    .foregroundColor(.white)
                    .font(.system(size:25))
                Divider()
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
                InfoView(text: "tiger@gmail.com", imageName: "envelope.fill")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


