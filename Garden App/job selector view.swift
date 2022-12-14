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
            if season == 1{
                finalResult += ""
            }
            else if season == 2{
                finalResult += ""
            }
            else if season == 3{
                finalResult += ""
            }
            else if season == 4{
                finalResult += ""
            }
            
        }
    }
}

struct job_selector_view_Previews: PreviewProvider {
    static var previews: some View {
        job_selector_view(weather: 0, temprature: 0, season: 0, job: 0)
    }
}
