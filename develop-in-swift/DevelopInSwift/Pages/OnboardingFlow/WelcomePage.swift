import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to Develop in Swift")
//                .border(.black, width: 1.5)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Descriptive description here from the Department of Redundancy Department")
//                .border(.black, width: 1.5)
                .font(.title2)
                .padding(.top)
        }
//        .border(.orange, width: 1.5)
        .padding()
//        .border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
