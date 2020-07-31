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
            
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Height", caption: "Enter Your Height (CM)")
                
                VStack {
                    SliderValue(value: model.height)
                        .padding(.bottom, 15)
                    Slider(value: $model.height, in: 1...250, step: 1.0)
                }   .frame(width: 150)
                
            }
        }   .frame(width: 300, height: 500)
    }
}
