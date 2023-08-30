//
//  ContentView.swift
//  Week1-HelloWorld
//
//  Created by Bach Nguyen on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 300)
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 1)
                    )
                Text("My Name is World")
                    .bold()
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            }

            Button(action: {
                print("World")
            }){
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello World!")

            }
            .padding()
            .foregroundColor(.blue)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.blue, lineWidth: 1)
                    .frame(width: 200, height: 50)
            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
