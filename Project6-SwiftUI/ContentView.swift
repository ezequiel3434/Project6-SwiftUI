//
//  ContentView.swift
//  Project6-SwiftUI
//
//  Created by Ezequiel Parada Beltran on 17/08/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enable = false
    
    var body: some View {

        Button("Tap me"){
            self.enable.toggle()
        }
        .frame(width:200, height: 200)
        .background(enable ? Color.blue : Color.red)
        .animation(nil)
        .foregroundColor(.white)
        .animation(.default)
        .clipShape(RoundedRectangle(cornerRadius: enable ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
        
  }
    
     
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
