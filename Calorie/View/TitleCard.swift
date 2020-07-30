//
//  TitleCard.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

struct TitleCard: View {
    var body: some View {
        
        ZStack {
            Color(.white)
                .cornerRadius(20)
                .shadow(color: Color(.systemGray5), radius: 5, x: 2, y: 2)
            VStack {
                Text("Calorie")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                    .padding(.bottom, 10)
                
                Text("BMR Calculator")
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
            }
        } .frame(width: 300, height: 500)
        
        
    }
}
