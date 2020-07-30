//
//  ContentView.swift
//  Calorie (BMR Calculator)
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: CalorieModel
    @EnvironmentObject var viewModel: CalorieViewModel
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if viewModel.activeCard == 0 {
                TitleCard()
            } else if viewModel.activeCard == 1 {
                GenderCard()
            } else if viewModel.activeCard == 2 {
                AgeCard()
            } else if viewModel.activeCard == 3 {
                HeightCard()
            } else if viewModel.activeCard == 4 {
                WeightCard()
            } else {
                ResultCard()
            }
            
            if viewModel.activeCard < 4 || viewModel.activeCard == 5 {
                NextButton()
            } else {
                CalculateButton()
            }
        }
    }
}
