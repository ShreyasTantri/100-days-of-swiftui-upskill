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
        //        ZStack {
        //            VStack(spacing: 0) {
        //                Color.red
        //                Color.blue
        //            }
        //            Text("GuessTheFlag")
        //                .foregroundStyle(.secondary)
        //                .padding(50)
        //                .background(.ultraThinMaterial)
        //        }
        //                .ignoresSafeArea()
        
//        LinearGradient(colors: [.green, .yellow], startPoint: .top, endPoint: .bottom)
//        LinearGradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(colors: [.yellow, .black], center: .center, startRadius: 20, endRadius: 200)
        
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}

#Preview {
    ContentView()
}
