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
        NavigationView{
            VStack {
                HStack {
                    Spacer()
                    //intro text
                    Text("Meet Gardener, your personal gardening companion, please enter information about the weather to continue:").font(.largeTitle)
                        .padding()
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                Spacer()
                
                //season setting section
                
                Text("What Season is it?")
                Picker("Current Season", selection: $season){
                    Text("Season").tag(0)
                    Text("Spring").tag(1)
                    Text("Summer").tag(2)
                    Text("Fall").tag(3)
                    Text("Winter").tag(4)
                }
                .background(Color.white)
                .font(.system(size: 18))
                
                
                //weather setting section
                
                Text("What is the Weather Outside?")
                Picker("Weather Outside", selection: $weather){
                    Text("Weather").tag(0)
                    Text("Sunny").tag(1)
                    Text("Cloudy").tag(2)
                    Text("Raining").tag(3)
                    Text("Windy").tag(4)
                }
                .background(Color.white)
                .font(.system(size: 18))
                
                
                //job selector
                
                Text("What job are you looking to do?")
                Picker("Job Selector", selection: $job){
                    Text("Job").tag(0)
                    Text("Weeding").tag(1)
                    Text("Raking").tag(4)
                    Text("Watering").tag(3)
                    Text("Mowing").tag(2)
                }
                .background(Color.white)
                .font(.system(size: 18))
                Spacer()
                //gets you to the result page
                NavigationLink("Can I Do My Job Today?", destination: job_selector_view(weather: weather, temprature: temprature, season: season, job: job))
                    .background(Color.white)
                    .padding()
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            
            }
            .background(Color.mint)
        }
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
