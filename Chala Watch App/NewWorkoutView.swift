//
//  NewWorkoutView.swift
//  Chala Watch App
//
//  Created by Dawit Tadele on 7/6/24.
//

import SwiftUI

struct NewWorkoutView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer() // Spacer to push content to the top
                
                NavigationLink(destination: WorkoutSessionView()) {
                    Text("Start Workout")
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.green)
                }
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.red)
                }
                
                Spacer() // Spacer to push content to the bottom
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    NewWorkoutView()
}
