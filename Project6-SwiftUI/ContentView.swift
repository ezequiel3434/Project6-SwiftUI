//
//  ContentView.swift
//  Project6-SwiftUI
//
//  Created by Ezequiel Parada Beltran on 17/08/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
//        Button("Tap me"){
////            self.animationAmount += 1
//        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(Color.red)
//                .scaleEffect(animationAmount)
//                .opacity(Double(2-animationAmount))
//            .animation(
//                       Animation.easeInOut(duration: 1)
//                       .repeatForever(autoreverses: false)
//                   )
//        )
//        .onAppear{
//                self.animationAmount = 2
//        }
//
        print(animationAmount)
        
        return VStack{
            Stepper("Scale amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            Button("Tap me") {
                self.animationAmount += 1
            }
        .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
            }
        
  }
    
     
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
