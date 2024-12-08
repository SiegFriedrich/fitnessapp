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
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
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
                }.padding()
                
            }
        }
        
    }
}

#Preview {
    HomeView()
}
