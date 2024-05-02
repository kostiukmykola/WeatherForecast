//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Mykola Kostiuk on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                DayForecast(day: "Mon", isRainy: true, high: "70", low: "50")
                DayForecast(day: "Tue", isRainy: false, high: "50", low: "20")
            }
            HStack {
                DayForecast(day: "Wed", isRainy: false, high: "50", low: "20")
                DayForecast(day: "Thu", isRainy: true, high: "40", low: "20")
            }
            HStack {
                DayForecast(day: "Fri", isRainy: false, high: "30", low: "10")
                DayForecast(day: "Sat", isRainy: false, high: "50", low: "20")
            }
            HStack {
                DayForecast(day: "Sun", isRainy: true, high: "40", low: "20")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: String
    let low: String
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
        
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.bold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
