import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 150, height: 150)
                .foregroundStyle(.tint)
            
            Text("Welcome to the Develop in Swift App")
                .border(.black, width: 1.5)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Descriptive description here from the Department of Redundancy Department")
                .border(.black, width: 1.5)
                .font(.title2)
        }
        .border(.orange, width: 1.5)
        .padding()
        .border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
