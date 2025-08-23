//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by CCS038 on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }
    
//    func executeDelete() {
//        print("Now deleting")
//    }
}

#Preview {
    ContentView()
}


/*
 
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
 
//        Text("Your content")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .foregroundStyle(.white)
//            .background(.red.gradient)
 
 */


/*
 /*
  Image("pencil") will load an image called “Pencil” that you have added to your project.
  Image(decorative: "pencil") will load the same image, but won’t read it out for users who have enabled the screen reader. This is useful for images that don’t convey additional important information.
  Image(systemName: "pencil") will load the pencil icon that is built into iOS. This uses Apple’s SF Symbols icon collection, and you can search for icons you like – download Apple’s free SF Symbols app from the web to see the full set.
  */
 
 /*
  Button {
      print("Edit button was tapped")
  } label: {
      Image(systemName: "pencil")
  }
  */
 
 /*
  If you want both text and image at the same time, you have two options. The first is provide them both to the Button directly, like this:

  Button("Edit", systemImage: "pencil") {
      print("Edit button was tapped")
  }
  But if you want something more custom, SwiftUI has a dedicated type called Label.

  Button {
      print("Edit button was tapped")
  } label: {
      Label("Edit", systemImage: "pencil")
          .padding()
          .foregroundStyle(.white)
          .background(.red)
  }
  */
 
//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.red)
//        }
 
//        VStack {
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//        }
//
//        VStack {
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//        }
//
//        VStack {
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
//        }
//
//        VStack {
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.bordered)
//        }
//        Button("Delete selection", role: .destructive, action: executeDelete)
//        {
//            print("Now deleting")
//        }
 */
