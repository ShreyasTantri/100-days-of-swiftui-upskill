//
//  ContentView.swift
//  WeSplit
//
//  Created by CCS038 on 07/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
        }
    }
}

#Preview {
    ContentView()
}




//    var body: some View {
//        VStack {
//            Image(systemName: "iphone")
//                .imageScale(.large)
//                .foregroundStyle(.blue)
//            Text("Buy an iPhone without selling your kidney!!")
//        }
//        .padding()
//    }



//        NavigationStack{
//            Form {
//                Section{
//                    Text("Hello, world!")
//                }
//                Text("Hello, world!")
//                Text("Hello, world!")
//                Section{
//                    Text("Hello, world!")
//                }
//                Section{
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                }
//                Section{
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                }
//                Section{
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                }
//            }
//            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.inline)
//        }
