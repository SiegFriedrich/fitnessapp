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
                    }.padding(.horizontal)
                    
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
                    }.padding(.horizontal)
                }
            }
        }
        
        
    }
}

#Preview {
    HomeView()
}
