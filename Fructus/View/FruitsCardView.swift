import SwiftUI

struct FruitsCardView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false

    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                //Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.17), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.17), radius: 2, x: 2, y: 2)

                // Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.17), radius: 2, x: 2, y: 2)
                    .frame(maxWidth: 480)
                
                // Button
                StartButtonView()
            } // VStack
        } // ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding()
        .onAppear {
            withAnimation(.easeOut(duration: 1.5)) {
                isAnimating = true
            }
        }

    }
}

// MARK: - PREVIEW
struct FruitsCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCardView(fruit: fruitData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
