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
    @State var season = ""
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
                .padding()
                
                //weather setting section
                
                Text("What is the Weather Outside?")
                Picker("Weather Outside", selection: $weather){
                    Text("Sunny").tag("Sunny")
                    Text("Partly Cloudy").tag("Partly Cloudy")
                    Text("Cloudy").tag("Cloudy")
                    Text("Raining/Snowing").tag("Raining or Snowing")
                    Text("Windy").tag("Windy")
                }
                .background(Color.white)
                .padding()
          
                //job selector
                
                Text("What job are you looking to do?")
                Picker("Job Selector", selection: $job){
                    Text("Weeding").tag(1)
                    Text("Raking").tag(2)
                    Text("Watering").tag(3)
                    Text("Planting").tag(4)
                    Text("Trans-Planting").tag(5)
                    Text("Mowing").tag(6)
                }
                .background(Color.white)
                .padding()
                
                //temprature setter
                
                Text("What temprature is it today? (Faranheit)")
                Picker("Temp Setter", selection: $temprature){
                    Text("< 30").tag(1)
                    Text("30 - 50").tag(2)
                    Text("50 - 70").tag(3)
                    Text("70 - 90").tag(4)
                    Text("> 90 ").tag(5)
                }
                .background(Color.white)
                .padding()
            
        }
        .background(Color.mint.edgesIgnoringSafeArea(.all))
              NavigationLink("Next", destination: job_selector_view(weather: weather, temprature: temprature, season: season, job: job))
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    // next page

}
