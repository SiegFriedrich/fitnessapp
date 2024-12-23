//
//  HomeView.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/05.
//

import SwiftUI

struct HomeView: View {
@StateObject var viewModel = HomeViewModel()
    
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
                                ProgressCircleView(progress: $viewModel.calories, goal: 600, color: .blue)
                            }
                            VStack{
                                ProgressCircleView(progress: $viewModel.active, goal: 360, color: .red)
                            }.padding(.all, 20)
                            VStack{
                                ProgressCircleView(progress: $viewModel.stand, goal: 6, color: .green)
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
                        ForEach(viewModel.mockActivityies, id: \.id){activity in
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
                        ForEach(viewModel.mockWorkoutList, id: \.id){ workout in
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
