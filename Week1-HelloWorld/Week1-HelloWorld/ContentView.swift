//
//  ContentView.swift
//  Week1-HelloWorld
//
//  Created by Bach Nguyen on 8/30/23.
//

import SwiftUI

struct CircleView: View{
    var body: some View{
        ZStack{
            Circle()
                .foregroundColor(.blue)
                .frame(width: 300, height: 300)
                .overlay(
                    Circle()
                        .stroke(Color.blue, lineWidth: 1)
                )
            Text("hehehehehe")
                .bold()
                .font(.system(size: 24))
                .foregroundColor(.white)
        }
    }
}

struct ContentView: View {
    @State private var isToggle = false
    var body: some View {
        VStack {
            Toggle("Toggle me", isOn: $isToggle)
                .padding()
            if isToggle{
                CircleView()
            } else{
                Text("Turn it ON!!!!")
            }
//            Button(action: {
//                print("World")
//            }){
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello World!")
//
//            }
//            .padding()
//            .foregroundColor(.blue)
//            .overlay(
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(Color.blue, lineWidth: 1)
//                    .frame(width: 200, height: 50)
//            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
