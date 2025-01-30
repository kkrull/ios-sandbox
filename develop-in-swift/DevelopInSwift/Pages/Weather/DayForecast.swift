import SwiftUI

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconColor: Color {
        isRainy ? Color.blue : Color.yellow
    }
    
    var iconName: String {
        isRainy ? "cloud.drizzle.fill" : "sun.max.fill"
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .font(Font.largeTitle)
                .foregroundStyle(iconColor)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
    }
}

#Preview {
    DayForecast(day: "Wednesday", isRainy: false, high: 70, low: 50)
}
