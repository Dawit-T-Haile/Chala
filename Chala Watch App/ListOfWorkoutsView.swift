//
//  WorkoutView.swift
//  Chala Watch App
//
//  Created by Dawit Tadele on 7/6/24.
//

import SwiftUI

struct ListOfWorkoutsView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NewWorkoutView()) {
                    Text("Start New Workout")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(0)
                .buttonStyle(PlainButtonStyle())
                List {
                    ForEach(workouts, id: \.self) { item in
                        NavigationLink(destination: Text("Detail for \(item)")) {
                            VStack {
                                Text("On \(formatDate(item.date, "YYY-MM-dd"))")
                                Text("\(item.duration) minutes")
                            }
                            
                        }
                    }
                }
                .navigationTitle("Your Workouts")
            }.padding(0)
        }
    }
}

#Preview {
    ListOfWorkoutsView()
}
