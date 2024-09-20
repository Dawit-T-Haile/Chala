//
//  ContentView.swift
//  Chala Watch App
//
//  Created by Dawit Tadele on 7/4/24.
//

// Testing changes

import SwiftUI
import Foundation

func formatDate(_ date: Date, _ format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Your workouts")
            ForEach(workouts, id: \.self) { item in
                Text("On \(formatDate(item.date, "YYY-MM-dd"))")
                Text("For \(item.duration) minutes")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
