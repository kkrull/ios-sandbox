import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct OnboardingPage: View {
    var body: some View {
        TabView {
            WelcomeTab()
            FeaturesTab()
        }
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
        .tabViewStyle(.page)
    }
}

#Preview {
    OnboardingPage()
}
