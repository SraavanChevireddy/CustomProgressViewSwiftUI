//
//  ContentView.swift
//  CustomProgressViewSwiftUI
//
//  Created by Sraavan Chevireddy on 1/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            ProgressBar(value: .constant(0.3), color: .constant(Color.indigo))
                .frame(height: 20)
            Button {
                showAlert.toggle()
            } label: {
                Text("Tap me")
            }
        }.alert("Test", isPresented: $showAlert, actions: {
            Text("Dismiss")
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProgressBar: View {
    @Binding var value: Float
    @Binding var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.lightGray))
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(color)
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}
