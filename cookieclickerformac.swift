import SwiftUI

// Main view for the Cookie Clicker game
struct CookieClickerView: View {
    // State variable to track the cookie count
    @State private var score: Int = UserDefaults.standard.integer(forKey: "cookieScore")

    var body: some View {
        VStack {
            Text("Cookie Clicker")
                .font(.largeTitle)
                .padding()

            Text("Cookies: \(score)")
                .font(.title)
                .padding()

            // Cookie image with click action
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.brown)
                .onTapGesture {
                    score += 1
                    UserDefaults.standard.set(score, forKey: "cookieScore")
                }
                .scaleEffect(0.95)
                .animation(.easeOut(duration: 0.1), value: score)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGray6))
    }
}

// Preview provider for Xcode
struct CookieClickerView_Previews: PreviewProvider {
    static var previews: some View {
        CookieClickerView()
    }
}
