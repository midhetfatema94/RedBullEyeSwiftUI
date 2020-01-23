//
//  ContentView.swift
//  RedBullEye
//
//  Created by Waveline Media on 1/23/20.
//  Copyright © 2020 DevFest. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    var body: some View {
        VStack(spacing: 10.0) {
            HStack(spacing: 20.0) {
                VStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2 - 20, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.sRGB, red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("Match this color")
                }
                VStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2 - 20, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.sRGB, red: rGuess, green: gGuess, blue: bGuess, opacity: 1.0))
                    Text("R: \(rGuess * 255), G: \(gGuess * 255), B: \(bGuess * 255)")
                }
            }
            Text("Hit Me Button")
            VStack {
                HStack {
                    Text("0")
                        .foregroundColor(Color(UIColor.red))
                    Slider(value: $rGuess)
                    Text("255")
                        .foregroundColor(Color(UIColor.red))
                }
                HStack {
                    Text("0")
                        .foregroundColor(Color(UIColor.green))
                    Slider(value: $gGuess)
                    Text("255")
                        .foregroundColor(Color(UIColor.green))
                }
                HStack {
                    Text("0")
                        .foregroundColor(Color(UIColor.blue))
                    Slider(value: $bGuess)
                    Text("255")
                        .foregroundColor(Color(UIColor.blue))
                }
            }.padding(.leading)
             .padding(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
    }
}
