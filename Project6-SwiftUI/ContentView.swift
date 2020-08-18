//
//  ContentView.swift
//  Project6-SwiftUI
//
//  Created by Ezequiel Parada Beltran on 17/08/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor)
        .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}



struct ContentView: View {
//    let letters = Array("Hello SwiftUI")
//    @State private var enable = false
//    @State private var dragAmount  = CGSize.zero
    
    @State private var isShowingRed = false
    
    
    var body: some View {

//        HStack(spacing: 0) {
//            ForEach(0..<letters.count) { num in
//                Text(String(self.letters[num]))
//                .padding(5)
//                    .font(.title)
//                    .background(self.enable ? Color.blue : Color.red)
//                    .offset(self.dragAmount)
//                    .animation(Animation.default.delay(Double(num) / 20)
//                )
//            }
//        }
//    .gesture(
//        DragGesture()
//            .onChanged{ self.dragAmount = $0.translation }
//            .onEnded({ _ in
//                self.dragAmount = .zero
//                self.enable.toggle()
//            })
//        )
        
        VStack{
            Button("Tap me") {
                withAnimation { ()  in
                     self.isShowingRed.toggle()
                }
               
            }
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        
        
        
  }
    
     
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
