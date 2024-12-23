//
//  HomeViewModel.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/09.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    
    var calories: Int = 300
    var active: Int = 60
    var stand: Int = 4
    
    var mockActivityies = [
    Activity(id:0, title:"Today steps", subtitle: "Goal 12,000", image:"figure.walk", tintColor: .green, amount: "12,100"),
    Activity(id:1, title:"Today steps", subtitle: "Goal 10,000", image:"figure.baseball", tintColor: .green, amount: "9,230"),
    Activity(id:2, title:"Today steps", subtitle: "Goal 16,090", image:"figure.boxing", tintColor: .green, amount: "15,230"),
    Activity(id:3, title:"Today steps", subtitle: "Goal 14,010", image:"figure.cooldown", tintColor: .green, amount: "10,230")
    ]
    var mockWorkoutList = [
        Workout(id: 0, image: "figure.run", tintColor: .green, title: "Running", duration: "123 mins", date: "Aug 3", calories: "141 kcal"),
        Workout(id: 1, image: "figure.boxing", tintColor: .blue, title: "Boxing", duration: "93 mins", date: "Oct 14", calories: "441 kcal"),
        Workout(id: 2, image: "figure.cooldown", tintColor: .red, title: "Cooldown", duration: "70 mins", date: "Jul 3", calories: "3455 kcal"),
        Workout(id: 3, image: "figure.play", tintColor: .brown, title: "Play", duration: "123 mins", date: "Mar 7", calories: "431 kcal"),
        Workout(id: 4, image: "figure.basketball", tintColor: .orange, title: "Basketball", duration: "63 mins", date: "Feb 9", calories: "330 kcal")
        
    ]
}
