//
//  OnboardingView.swift
//  BA-Schedule
//
//  Created by Jonas Richard Richter on 30.01.22.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var settings: Settings
    
    
    // MARK: - View
    
    var body: some View {
        NavigationView {
            VStack {
                Text("WELCOME_MESSAGE")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 40) {
                    Feature(systemImage: "calendar.day.timeline.leading", iconColor: .blue, title: "FEATURE_1_TITLE", description: "FEATURE_1_DESCR")
                    
                    Feature(systemImage: "lock.shield", iconColor: .yellow, title: "FEATURE_2_TITLE", description: "FEATURE_2_DESCR")
                }
                
                Spacer()
                
                // TODO: Add privacy informations
                
                NavigationLink(destination: {
                    LoginView()
                        .navigationBarTitleDisplayMode(.inline)
                }, label: {
                    HStack {
                        Spacer()
                        
                        Text("Fortfahren")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .frame(height: 50)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                }).padding()
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .environment(\.locale, .init(identifier: "de"))
            .environmentObject(Settings())
    }
}
