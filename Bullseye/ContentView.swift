//
//  ContentView.swift
//  Bullseye
//
//  Created by Ronan Fernandes on 23/07/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 Put the Bullseye as close as you can to")
                .textCase(.uppercase)
                .font(.footnote)
                .bold()
                .multilineTextAlignment(.center)
    
            Text("89")
            
            HStack {
                Text("0")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
            }
            
            Button(action: {}) {
                Text("Hit Me!")
            }
            
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
