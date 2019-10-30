//
//  ContentView.swift
//  RGBullsEye
//
//  Created by  Джон Костанов on 28/10/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    /*@START_MENU_TOKEN@*/Color(red: 0.5, green: 0.5, blue: 0.5)/*@END_MENU_TOKEN@*/
                    VStack {
                        Text("Match this color")
                    }
                }
                VStack {
                    /*@START_MENU_TOKEN@*/Color(red: 0.5, green: 0.5, blue: 0.5)/*@END_MENU_TOKEN@*/
                    VStack {
                        Text("R: 127 G: 127 B: 127")
                    }
                }
            }
            Button(action: {}) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            Slider(value: .constant(0.5))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}

