import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach (0..<5) { _ in 
                FruitsCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
