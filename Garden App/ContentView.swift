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
    @State var job = 0
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Meet Gardener, your personal gardening companion, please enter information about outside to continue:").font(.largeTitle)
                Spacer()
            }
            Picker("Current Season", selection: $season){
            Text("Spring").tag(1)
            Text("Summer").tag(2)
            Text("Fall").tag(3)
            Text("Winter").tag(4)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
        .background(Color.mint.edgesIgnoringSafeArea(.all))
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
