//
//  ContentView.swift
//  Bullseye
//
//  Created by Ronan Fernandes on 23/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 Put the Bullseye as close as you can to")
                .textCase(.uppercase)
                .font(.footnote)
                .bold()
                .multilineTextAlignment(.center)
    
            Text("\(Int(self.sliderValue))")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Text("0").bold()
                
                Slider(value: $sliderValue, in: 1.0...100.0)
                
                Text("100").bold()
            }
            
            Button(
                action: {
                    self.alertIsVisible = true
                }
            ) {
                Text("Hit Me!")
            }.alert(
                "Hello there!",
                isPresented: $alertIsVisible
            ) {
                Button("Awesome!") {}
            } message: {
                let roundedValue: Int = Int(self.sliderValue)
                Text("The slider's value is: \(roundedValue)")
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
