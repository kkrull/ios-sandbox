import SwiftUI

struct WeatherPage: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Monday", isRainy: false, high: 2, low: 1)
                    .padding()
                DayForecast(day: "Tuesday", isRainy: true, high: 8, low: 4)
                    .padding()
                DayForecast(day: "Wednesday", isRainy: false, high: 32, low: 16)
                    .padding()
                DayForecast(day: "Thursday", isRainy: true, high: 128, low: 64)
                    .padding()
                DayForecast(day: "Friday", isRainy: false, high: -1, low: -2)
                    .padding()
                DayForecast(day: "Saturday", isRainy: true, high: -4, low: -8)
                    .padding()
                DayForecast(day: "Sunday", isRainy: false, high: -16, low: -32)
                    .padding()
            }
        }
    }
}

#Preview {
    WeatherPage()
}
