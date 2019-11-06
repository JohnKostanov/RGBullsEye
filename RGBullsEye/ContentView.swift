//
//  ContentView.swift
//  RGBullsEye
//
//  Created by  Джон Костанов on 28/10/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
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
        VStack {
            HStack {
                VStack {
                    Color(red: rTarget, green: gTarget, blue: bTarget)
                    VStack {
                        Text("Match this color")
                    }
                }
                VStack {
                    Color(red: rGuess, green: gGuess, blue: bGuess)
                    VStack {
                        Text("R: 127 G: 127 B: 127")
                    }
                }
            }
            Button(action: {}) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            HStack {
                Text("0").foregroundColor(.red)
                Slider(value: $rGuess)
                Text("255").foregroundColor(.red)
            }.padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.8, gGuess: 0.5, bGuess: 0.5).previewLayout(.fixed(width: 568, height: 320))
    }
}

