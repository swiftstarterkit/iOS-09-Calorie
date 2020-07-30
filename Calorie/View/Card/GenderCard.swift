//
//  GenderCard.swift
//  Calorie
//
//  Created by Pao Yu on 2020-07-30.
//

import SwiftUI

struct GenderCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            Color(.white)
                .cornerRadius(20)
                .shadow(color: Color(.systemGray5), radius: 5, x: 2, y: 2)
            
            VStack {
                Text("Gender")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                    .padding(.bottom, 10)
                
                Text("Select Your Gender")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))
                    .padding(.bottom, 30)
                
                Picker("Gender", selection: $model.gender) {
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }   .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 150)
                
            }
        } .frame(width: 300, height: 500)
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderCard()
    }
}
