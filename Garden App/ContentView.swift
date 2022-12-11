//
//  ContentView.swift
//  Garden App
//
//  Created by caden christesen on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var weather = 0
    @State var temprature = 0
    @State var season = 0
    var body: some View {
        VStack {
            Text("Gardener")
            Spacer()
            HStack {
                Spacer()
                Text("Test")
                Spacer()
            }
            Spacer()
        }.background(Color.mint.edgesIgnoringSafeArea(.all))
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
