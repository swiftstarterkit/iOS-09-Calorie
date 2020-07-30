//
//  NextButton.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

struct NextButton: View {
    
    @EnvironmentObject var viewModel: CalorieViewModel
    
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color(.systemBlue))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture(perform: viewModel.moveToNextCard)
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton()
    }
}
