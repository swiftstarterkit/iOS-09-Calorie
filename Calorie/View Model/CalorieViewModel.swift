//
//  CalorieViewModel.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

class CalorieViewModel: ObservableObject {
    
    @Published var activeCardIndex: Int = 0
    
    func moveToNextCard() {
        withAnimation {
            if activeCardIndex < 5 {
                activeCardIndex += 1
            } else {
                activeCardIndex = 0
            }
        }
    }
}
