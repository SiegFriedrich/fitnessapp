//
//  HomeView.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/05.
//

import SwiftUI

struct HomeView: View {
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
                    
                    
                }
                
            }
        }
        
    }
}

#Preview {
    HomeView()
}
