//
//  ActivityCard.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/08.
//

import SwiftUI
struct Activity {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
}

struct ActivityCard: View {
    
    @State var activity: Activity
    
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6).cornerRadius(15)
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 8){
                        Text(activity.subtitle)
                        Text(activity.subtitle).font(.caption).opacity(0.6)
                    }
                    Spacer()  //一定是systemName 我去
                    Image(systemName: activity.image).foregroundStyle(activity.tintColor)
                }
                
                Text(activity.amount).font(.title).bold().padding()
            }.padding()
        }
    }
}

#Preview {
    ActivityCard(activity: Activity(id:0, title:"Today steps", subtitle: "Goal 12,000", image:"figure.walk", tintColor: Color.black, amount: "20,230"))
}
