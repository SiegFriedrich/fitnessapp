//
//  WorkoutCard.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/08.
//

import SwiftUI

struct Workout {
    let id: Int
    let image: String
    let tintColor: Color
    let title: String
    let duration: String
    let date: String
    let calories: String
}

struct WorkoutCard: View {
   @State var workout: Workout
    
    var body: some View {
        HStack{
            Image(systemName: workout.image).resizable().scaledToFit().frame(width: 48, height: 48).foregroundStyle(workout.tintColor).padding().background(.gray.opacity(0.1)).cornerRadius(10)
            VStack(spacing: 16 ){
                HStack{
                    Text(workout.title).font(.title2).bold()
                    Spacer()
                    Text(workout.duration)
                }
                HStack{
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                }
            }
            
        }.padding()
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, image: "figure.run", tintColor: .green, title: "Running", duration: "23 mins", date: "Aug 3", calories: "341 kcal"))
}
