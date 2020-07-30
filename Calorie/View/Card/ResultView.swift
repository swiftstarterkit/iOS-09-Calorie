//
//  ResultCard.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            
            Color(.white)
                .cornerRadius(20)
                .shadow(color: Color(.systemGray5), radius: 5, x: 2, y: 2)
            
            VStack {
                Text("Result")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                    .padding(.bottom, 10)
                
                Text("Your Basal Metabolic Rate is")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))
                    .padding(.bottom, 30)
                
                VStack {
                    Text(String(format: "%0.0f", model.resultBMR))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                    
                    Text("Calories / Day")
                        .font(.caption)
                        .padding(.top, 20)
                        .foregroundColor(Color(.systemGray))
                    
                }
            }
        }   .frame(width: 300, height: 500)
    }
}
