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
        VStack{
            Spacer()
           // Text("\(result(season:temprature:job:weather:))")
            Spacer()
        }
    }
}
func result (season:Int, temprature:Int, job:Int, weather:Int) -> String {
    var finalMessage = ""
   //if spring
    if(season == 1){
        //and if its sunny
        if(weather == 1){
            if(job == 1){
                finalMessage = "Weeding is very important to keep your garden clean and healthy. Today is a good day as long as your garden isn't too large. Spring is a great time to get started on this tedious task, and no time is as good as the present!"
            }
            else if(job == 2){
                finalMessage = "Mowing the lawn is one of those must-do jobs. Today might not be a good day however, because unless you have yourself a riding mower, the sun could cause you to burn if you're out too long. you may want to consider another day."
            }
            else if(job == 3){
                finalMessage = "Watering is very important for your garden, especially today. The sun being out can cause your polants to dry up quickly, so it is vital to go out and water your plants."
            }
            else{
                finalMessage = "Leaves shouldn't be falling during your summer months, but if they are, now is a great time. It's not too cold out and the sun will be good for your health, just remember to wear a hat."
            }
        }
        //and if its cloudy
        else if(weather == 2){
            if(job == 1){
                finalMessage = "Weeding is very important to keep your garden clean and healthy. Today is a good day no matter the size of your garden. Spring is a great time to get started on this tedious task, and no time is as good as the present!"
            }
            else if(job == 2){
                finalMessage = "Mowing the lawn is one of those must-do jobs. Today is a great day since cloud cover will keep you from getting too warm while doing it."
            }
            else if(job == 3){
                finalMessage = "Watering is very important for your plants' health, so get out there and get started! You won't get too hot, and your plants wont dry up on you either. It can be a bit of a nuisance, but it will be worth it!"
            }
            else{
                finalMessage = "Leaves shouldn't be falling during your summer months, but if they are, now is a great time. Not too hot, not too cold, and you're beautifying your yard."
            }
        }
        //and if its raining or snowing
        else if(weather == 3){
            if(job == 1){
                finalMessage = "Rain, rain, go away. Try again, another day. Unless you want to get wet- then have at it."
            }
            else if(job == 2){
                finalMessage = "Rain, rain, go away. Try again, another day. Unless you want to get wet- then have at it."
            }
            else if(job == 3){
                finalMessage = "Believe it or not, there is no need. The rain will water your plants for you, and make your day that much easier."
            }
            else{
                finalMessage = "Rain, rain, go away. Try again, another day. Unless you want to get wet- then have at it."
            }
        }
        //and if its windy
        else{
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = "As long as you bring yourself a sweatshirt you should be alright, but now it is very important to water base of the plant. Any extra weight on the stems or flowers could cause your more delicate plants to break in the wind."
            }
            else{
                finalMessage = "Try again later, unfortunately the wind is going to keep you from being able to keep your leaves in one place, or even grab them in the first place."
            }
        }
        
    }
    //if its summer
    else if(season == 2){
        if(weather == 1){
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = "Leaves shouldn't be falling during your summer months, but if they are, now might not be a good time. It's most likely too hot to be doing a job out in the sun like raking, and with no cloud cover you'll risk sunburn or heatstroke. Try again another day."
            }
        }
        else if(weather == 2){
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
            }
        }
        else if(weather == 3){
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
            }
        }
        else{
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
            }
        }
        
    }
    //if its fall
    else if(season == 3){
        if(weather == 1){
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
            }
        }
        else if(weather == 2){
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
            }
        }
        else if(weather == 3){
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
            }
        }
        else{
            if(job == 1){
                finalMessage = ""
            }
            else if(job == 2){
                finalMessage = ""
            }
            else if(job == 3){
                finalMessage = ""
            }
            else{
                finalMessage = ""
                
            }
        }
    }
    //if its winter
    else{
        finalMessage = "Unfortunately, winter is not a very good time for gardening. Wait a few mmonths, and then come on back."
    }
    return finalMessage
}
struct job_selector_view_Previews: PreviewProvider {
    static var previews: some View {
        job_selector_view(weather: 0, temprature: 0, season: 0, job: 0)
    }
}
