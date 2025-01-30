import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
            
            Text(description)
                .padding(.leading, 10)
//                .border(.black, width: 1.5)

            Spacer()
        }
        .padding()
        .background(.tint, in: RoundedRectangle(cornerRadius: 12))
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(
        iconName: "hands.sparkles",
        description: "A multiline description that says in way to many words what this feature might do.  But how can a feature be useful to a user, when the developers don't know themselves?"
    )
}
