//
//  HeightCard.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

struct HeightCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            Color(.white)
                .cornerRadius(20)
                .shadow(color: Color(.systemGray5), radius: 5, x: 2, y: 2)
            
            VStack {
                Text("Height")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                    .padding(.bottom, 10)
                
                Text("Enter Your Height (CM)")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))
                    .padding(.bottom, 30)
                
                VStack {
                    SliderValue(value: model.height)
                        .padding(.bottom, 15)
                    Slider(value: $model.height, in: 1...250, step: 1.0)
                }   .frame(width: 150)
                
            }
        } .frame(width: 300, height: 500)
    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        HeightCard()
    }
}
