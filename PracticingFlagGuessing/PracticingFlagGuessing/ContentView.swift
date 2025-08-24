//
//  ContentView.swift
//  PracticingFlagGuessing
//
//  Created by CCS038 on 23/08/25.
//

/*
 Tiny practice to make it stick (5–10 mins each)
 P1: Wrap your whole game in a ZStack with a linear gradient background.
 P2: Make a FlagButton view that takes an image name and applies the capsule + shadow style. Use it in your ForEach.
 P3: Add an @State score and show it in the title bar (e.g., “Score: 3”).
 P4: Change the alert to show “Correct!” or “Wrong, that’s the flag of …”.
 P5: After alert dismissal, shuffle the countries and pick a new correct answer.
 */

//// P1: Wrap your whole game in a ZStack with a linear gradient background.
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            LinearGradient(colors: [.green, .yellow], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            
//            VStack {
//                Button {
//                    print("Hi")
//                } label: {
//                    Text("Action")
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}

// P2: Make a FlagButton view that takes an image name and applies the capsule + shadow style. Use it in your ForEach.
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
//                Button {   // simple Syntax
//                    print("Hi")
//                } label: {
//                    Text("Action")
//                }
                Button {
                    print("Flag tapped")
                } label: {
                    Image("Estonia")
                        .clipShape(Capsule())
                        .shadow(radius: 5)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
