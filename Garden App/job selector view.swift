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
            HStack{
                Spacer()
                Text("\((result(season:season, temprature:temprature, job:job, weather:weather)))")
                    .font(.largeTitle)
                Spacer()
            }
            if(job == 1){
                Image("Weed")
            }
            else if(job == 2){
                Image("Mow")
            }
            else if(job == 3){
               Image("Water")
            }
            else{
                Image("Rake")
            }
            
        }.background(Color.mint)
    }
}
func result (season:Int, temprature:Int, job:Int, weather:Int) -> String {
   //if spring
    if(season == 1){
        //and if its sunny
        if(weather == 1){
            if(job == 1){
                return "Weeding is very important to keep your garden clean and healthy. Today is a good day as long as your garden isn't too large. Spring is a great time to get started on this tedious task, and no time is as good as the present!"
            }
            else if(job == 2){
                return "Mowing the lawn is one of those must-do jobs. Today might not be a good day however, because unless you have yourself a riding mower, the sun could cause you to burn if you're out too long. you may want to consider another day."
            }
            else if(job == 3){
                return "Watering is very important for your garden, especially today. The sun being out can cause your polants to dry up quickly, so it is vital to go out and water your plants."
            }
            else{
                return "Leaves shouldn't be falling during your summer months, but if they are, now is a great time. It's not too cold out and the sun will be good for your health, just remember to wear a hat."
            }
        }
        //and if its cloudy
        else if(weather == 2){
            if(job == 1){
                return "Weeding is very important to keep your garden clean and healthy. Today is a good day no matter the size of your garden. Spring is a great time to get started on this tedious task, and no time is as good as the present!"
            }
            else if(job == 2){
                return "Mowing the lawn is one of those must-do jobs. Today is a great day since cloud cover will keep you from getting too warm while doing it."
            }
            else if(job == 3){
                return "Watering is very important for your plants' health, so get out there and get started! You won't get too hot, and your plants wont dry up on you either. It can be a bit of a nuisance, but it will be worth it!"
            }
            else{
                return "Leaves shouldn't be falling during your summer months, but if they are, now is a great time. Not too hot, not too cold, and you're beautifying your yard."
            }
        }
        //and if its raining
        else if(weather == 3){
            if(job != 3){
                return "Rain, rain go away, try your job another day."
            }
            else{
                return "Good news: nature is doing the work for you today, so you can sit back, relax, and let your garden be watered in peace."
            }
        }
        //and if its windy
        else{
            if(job == 1){
                return "Weeding is going to be fine, just make sure you have something to put the into so they dont blow their seeds into your garden. You don't want to make more work for yourself, do you?"
            }
            else if(job == 2){
                return "Mowing is a good idea today, the cuttings will most likely even clear themsleves for you. Talk about killing two birds with one stone."
            }
            else if(job == 3){
                return "As long as you bring yourself a sweatshirt you should be alright to water, but now it is very important to water base of the plant. Any extra weight on the stems or flowers could cause your more delicate plants to break in the wind."
            }
            else{
                return "Try raking again later, unfortunately the wind is going to keep you from being able to keep your leaves in one place, or even grab them in the first place."
            }
        }
        
    }
    //if its summer
    else if(season == 2){
        //and if its sunny
        if(weather == 1){
            return "Try again another day. Summer heat and direct sun exposure could harm you, so no matter what job you want to do you should wait for a cooler day."
        }
        //and if its cloudy
        else if(weather == 2){
            if(job == 1){
                return "Today is a perfect day for weeding, as the cloud coverage would will keep you safe from the elements and the heat."
            }
            else if(job == 2){
                return "Does a better day to mow exist? Cloud coverage and warm weather!?!? You cannot pass up mowing on a day like this!"
            }
            else if(job == 3){
                return "Today is a great day to water, since your plants shouldnt dry up too fast and you wont heat yourself up too much. Take advantage of this waether and water those plants!"
            }
            else{
                return "Leaves shouldn't be falling during your summer months, but if they are, now is a great time. It's warm enough to be enjoyable and the clouds provide you with the shade you trees will be lacking!"
            }
        }
        //and if its raining
        else if(weather == 3){
            if(job != 3){
                return "Rain, rain go away, try your job another day."
            }
            else{
                return "Good news: nature is doing the work for you today, so you can sit back, relax, and let your garden be watered in peace."
            }
        }
        //and if its windy
        else{
            if(job == 1){
                return "A cool breeze is just the thing you need to have a relaxing afternoon weeding. Make sure to stay hydrated and this should be just fine to do"
            }
            else if(job == 2){
                return "A cool breeze is perfect for summer mow. You'll feel almost as nice as you're making your lawn look. Be sure not to be in the sun for too long though."
            }
            else if(job == 3){
                return "You should be alright to water, but now it is very important to water base of the plant. Any extra weight on the stems or flowers could cause your more delicate plants to break in the wind."
            }
            else{
                return "Try raking again later, while there should be no reason to rake in the summer if you have too today isn't great since the wind is going to keep you from being able to keep your leaves in one place, or even grab them in the first place."
            }
        }
        
    }
    //if its fall
    else if(season == 3){
        //and if its sunny
        if(weather == 1){
            if(job == 1){
                return "Probably the last weeding of the season, so if its sunny, take advantage of the weather and get this out of the way today!"
            }
            else if(job == 2){
                return "Not to many days to mow left, take advantage of the nice weather beofre it goes away for the season!"
            }
            else if(job == 3){
                return "Fall is a fairly wet season, but if you have had the bad luck of experiencing a dry spell take advantage of the weather and water those plants!"
            }
            else{
                return "Raking! A staple of fall weather. If you've got leaves on the ground, the weather is perfect for a little raking!"
            }
        }
        //and if its cloudy
        else if(weather == 2){
            if(job == 1){
                return "Probably the last weeding of the season, it's not too cold yet, so take advantage of the weather and get this out of the way today!"
            }
            else if(job == 2){
                return "Typical fall day calls for typical fall activities- and unfortunately typical fall work. Todays a perfectly fine day to mow the lawn, and on the bright side it'll be one of the last of the season."
            }
            else if(job == 3){
                return "Fall is a fairly wet season, but if you have had the bad luck of experiencing a dry spell take advantage of the weather and water those plants!"
            }
            else{
                return "Raking! A staple of fall weather. If you've got leaves on the ground, go and get rid of them! Make sure to bring a sweatshirt though."
            }
        }
        //and if its raining
        else if(weather == 3){
            if(job != 3){
                return "Rain, rain go away, try your job another day."
            }
            else{
                return "Good news: nature is doing the work for you today, so you can sit back, relax, and let your garden be watered in peace."
            }
        }
        //and if its windy
        else{
            if(job == 1){
                return "Weeding is going to be fine, just make sure you have something to put the into so they dont blow their seeds into your garden. You don't want to make more work for yourself, do you?"
            }
            else if(job == 2){
                return "Mowing will be a little chilly- so bring a sweatshirt and dont get any leaves in your face and you'll be just fine!"
            }
            else if(job == 3){
                return "As long as you bring yourself a sweatshirt you should be alright to water, but now it is very important to water base of the plant. Any extra weight on the stems or flowers could cause your more delicate plants to break in the wind."
            }
            else{
                return "Raking! A staple of fall weather. If you've got leaves on the ground, go and get rid of them! Make sure to bring a sweatshirt though."
                
            }
        }
    }
    //if its winter
    else{
        return "Unfortunately, winter is not a very good time for gardening. Wait a few mmonths, and then come on back."
    }
    return "If you've encountered this message you've done the inpossible! Congrats!"
}
struct job_selector_view_Previews: PreviewProvider {
    static var previews: some View {
        job_selector_view(weather: 0, temprature: 0, season: 0, job: 0)
    }
}
