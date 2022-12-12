//
//  job selector view.swift
//  Garden App
//
//  Created by caden christesen on 12/12/22.
//

import SwiftUI

struct job_selector_view: View {
    @State var weather : Int
    @State var temprature : Int
    @State var season : Int
    @State var job : Int
    var body: some View {
        Text("Please select your job:")
        Picker("Job Possibilities", selection: $job){
            Text("Weeding").tag(1)
            Text("Watering").tag(2)
            Text("Planting").tag(3)
            Text("Translpanting").tag(4)
            Text("Mowing").tag(5)
            Text("Raking").tag(6)
        }
        .background(Color.mint.edgesIgnoringSafeArea(.all))
        .pickerStyle(WheelPickerStyle())
        .padding()
        
    }
}

struct job_selector_view_Previews: PreviewProvider {
    static var previews: some View {
        job_selector_view(weather: 0, temprature: 0, season: 0, job: 0)
    }
}
