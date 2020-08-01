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
            
            if viewModel.activeCardIndex == 0 {
                TitleCard()
            }
            
            if viewModel.activeCardIndex == 1 {
                GenderCard()
            }
            
            if viewModel.activeCardIndex == 2 {
                AgeCard()
            }
            
            if viewModel.activeCardIndex == 3 {
                HeightCard()
            }
            
            if viewModel.activeCardIndex == 4 {
                WeightCard()
            }
            
            if viewModel.activeCardIndex == 5 {
                ResultCard()
            }
            
            if viewModel.activeCardIndex < 4 || viewModel.activeCardIndex == 5 {
                NextButton()
            } else {
                CalculateButton()
            }
        }
    }
}
