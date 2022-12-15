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
    @State var season : String
    @State var job : Int
    @State var finalResult : String
    var body: some View {
        VStack{
            
            
        }
    }
    func result (weather: Int, temprature: Int, job: Int, finalResult: String, season: String){
        if season == "summer"{
            //finalResult += ""
        }
        else if season == "spring"{
            //finalResult += ""
        }
        else if season == "fall"{
            //finalResult += ""
        }
        else if season == "winter"{
            //finalResult += ""
        }
    }
}

struct job_selector_view_Previews: PreviewProvider {
    static var previews: some View {
        job_selector_view(weather: 0, temprature: 0, season: "", job: 0, finalResult: "" )
    }
}
