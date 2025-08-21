//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by CCS038 on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        VStack {
        //            Spacer()
        //            Text("First")
        //            Text("Second")
        //            Text("Third")
        //        }
        //    }
//        ZStack(alignment: .top) {
//            Text("Hello, world!")
//            Text("This is inside a stack")
//        }
//        ZStack {
//            Color(red: 1, green: 0.8, blue: 0)       // this is a view in itself
////                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Text("GuessTheFlag")
////                .background(.red)
//        }
//        .ignoresSafeArea()
//        .background(.red)
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("GuessTheFlag")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
                .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
