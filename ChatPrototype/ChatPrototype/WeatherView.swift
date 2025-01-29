import SwiftUI

struct WeatherView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Wednesday", isRainy: false, high: 40, low: 25)
                .padding()
            DayForecast(day: "Thursday", isRainy: true, high: 42, low: 30)
                .padding()
        }
    }
}

#Preview {
    WeatherView()
}
