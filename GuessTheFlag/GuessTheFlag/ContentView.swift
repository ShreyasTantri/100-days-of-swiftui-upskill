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
        ZStack(alignment: .top) {
            Text("Hello, world!")
            Text("This is inside a stack")
        }
    }
}

#Preview {
    ContentView()
}
