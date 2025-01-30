import SwiftUI

struct OnboardingPage: View {
    var body: some View {
        TabView {
            WelcomeTab()
            FeaturesTab()
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    OnboardingPage()
}
