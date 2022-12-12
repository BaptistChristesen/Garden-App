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
                Text("Meet Gardener, your personal gardening companion, please enter information about the weather to continue:").font(.largeTitle)
                    .padding()
                Spacer()
            }
            
            //season setting section
            
            Text("What Season is it?")
            Picker("Current Season", selection: $season){
            Text("Spring").tag(1)
            Text("Summer").tag(2)
            Text("Fall").tag(3)
            Text("Winter").tag(4)
            }
            .background(Color.white)
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            //weather setting section
            
            Text("What is the Weather Outside?")
            Picker("Weather Outside", selection: $weather){
            Text("Sunny").tag(1)
            Text("Partly Cloudy").tag(2)
            Text("Cloudy").tag(3)
            Text("Raining/Snowing").tag(4)
            Text("Windy").tag(5)
            }
            .background(Color.white)
            .padding()
            
            // next page
            
        }
        .background(Color.mint.edgesIgnoringSafeArea(.all))
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
