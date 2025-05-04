//
//  ContentView.swift
//  NameSpace-SwiftUI
//
//  Created by Nimish Mothghare on 04/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace private var namespace
    @State private var isFlipped = false
    
    var body: some View {
        VStack {
            if isFlipped {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
            } else {
                Circle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .foregroundColor(.red)
            }
            
            Button("Toggle") {
                withAnimation {
                    isFlipped.toggle()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
