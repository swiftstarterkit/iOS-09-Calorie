//
//  CalorieViewModel.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

class CalorieViewModel: ObservableObject {
    
    @Published var activeCard: Int = 0
    
    func moveToNextCard() {
        withAnimation {
            if activeCard < 5 {
                activeCard += 1
            } else {
                activeCard = 0
            }
        }
    }
    
}
