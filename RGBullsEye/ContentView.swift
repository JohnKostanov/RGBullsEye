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
    
    @State var showAlert = false
    
    func computeScore() -> Int {
        let rDiff = rGuess - rTarget
        let gDiff = gGuess - gTarget
        let bDiff = bGuess - bTarget
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int ((1.0 - diff) * 100.0 + 0.5)
    }
    
    var body: some View {
        NavigationView {
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
                            Text("R: \(Int(rGuess * 255)) G: \(Int(gGuess * 255)) B: \(Int(bGuess * 255))")
                        }
                    }
                }
                
                Button(action: { self.showAlert = true}) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }.alert(isPresented: $showAlert) { () -> Alert in
                    Alert(title: Text("Your Score"), message: Text(String(computeScore())))
                }.padding()
                
                ColorSlider(value: $rGuess, textColor: .red)
                ColorSlider(value: $gGuess, textColor: .green)
                ColorSlider(value: $bGuess, textColor: .blue)
                
            }
        }//.environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5).previewLayout(.fixed(width: 568, height: 320))
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
            Text("255").foregroundColor(textColor)
        }.padding(.horizontal)
    }
}
