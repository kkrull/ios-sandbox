import SwiftUI

struct ChatPage: View {
    var body: some View {
        VStack {
            Text("Here is some text.")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 16))
            Text("Now get lost, Bozo.")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 16))
            Text("Here is some more text that I was too lazy to declare, myself.")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 16))

        }
        .padding()
    }
}

#Preview {
    ChatPage()
}
