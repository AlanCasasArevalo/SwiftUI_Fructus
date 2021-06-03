import SwiftUI

struct FruitsCardView: View {
    
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                //Image
                Image(Constants.ImageAndIcons.blueberry)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.17), radius: 8, x: 6, y: 8)
                
                // Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.17), radius: 2, x: 2, y: 2)

                // Headline
                Text("Los arandanos son sanos y nutritivos")
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
        .background(LinearGradient(gradient: Gradient(colors: [Color("blueberryDark"), Color.blue]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        
    }
}

// MARK: - PREVIEW
struct FruitsCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
