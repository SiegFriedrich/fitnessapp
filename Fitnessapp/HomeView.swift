//
//  HomeView.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/05.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 300
    @State var active: Int = 60
    @State var stand: Int = 4
    
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
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading ){
                    Text("Welcome").font(.largeTitle).padding()
                    
                    HStack{
                        VStack{
                            VStack(alignment: .leading, spacing: 8){
                                Text("Calories").font(.callout).bold().foregroundColor(.red)
                                
                                Text("123 kcal").bold()
                            }
                            VStack(alignment: .leading, spacing: 8){
                                Text("Active").font(.callout).bold().foregroundColor(.red)
                                
                                Text("52 mins").bold()
                            }
                            VStack(alignment: .leading, spacing: 8){
                                Text("Stand").font(.callout).bold().foregroundColor(.red)
                                
                                Text("8 hours").bold()
                            }
                        }
                        Spacer()
                        ZStack{
                            VStack{
                                ProgressCircleView(progress: $calories, goal: 600, color: .blue)
                            }
                            VStack{
                                ProgressCircleView(progress: $active, goal: 360, color: .red)
                            }.padding(.all, 20)
                            VStack{
                                ProgressCircleView(progress: $stand, goal: 6, color: .green)
                            }.padding(.all, 40)
                        }
                    }.padding(.horizontal).padding(.top)
                    
                    HStack{
                        Text("Fitness Activity").font(.title2)
                        Spacer()
                        Button{
                            print("show more")
                        } label: {
                            Text("Show more").padding(.all, 10).foregroundColor(.white).background(.blue).cornerRadius(20)
                        }
                    }.padding(.horizontal)
                    
           

                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)){
                        ForEach(mockActivityies, id: \.id){activity in
                            ActivityCard(activity: activity)
                        }
                    }.padding(.horizontal)
                    
                    HStack{
                        Text("Recent Workout").font(.title2)
                        Spacer()
                        NavigationLink{EmptyView()} label: {
                            Text("Show more").padding(.all, 10).foregroundStyle(.white).background(.blue).cornerRadius(20)
                        }
                    }.padding(.horizontal).padding(.top)
                    
                    LazyVStack{
                        ForEach(mockWorkoutList, id: \.id){ workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                }
            }
        }
        
        
    }
}

#Preview {
    HomeView()
}
