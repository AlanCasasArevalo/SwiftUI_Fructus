import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        TabView {
            ForEach (fruits) { fruit in
                FruitsCardView(fruit: fruit)
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
