import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
//                .border(.red, width: 1.5)
            
            FeatureCard(
                iconName: "hands.sparkles",
                description: "A multiline description that says in way to many words what this feature might do.  But how can a feature be useful to a user, when the developers don't know themselves?"
            )
            .padding(.top, 12)
//            .border(.orange, width: 1.5)

            FeatureCard(iconName: "fork.knife", description: "It slices!")
//                .border(.yellow, width: 1.5)

            FeatureCard(iconName: "dice.fill", description: "It dices!")
//                .border(.green, width: 1.5)
        }
        .padding()
//        .border(.black, width: 1.5)
    }
}

#Preview {
    FeaturesPage()
}
