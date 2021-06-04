import SwiftUI

struct FruitNutrientRowView: View {
    
    var foregroundColor: Color
    var nutrientTitle: String
    var nutrientValue: String

    var body: some View {
        HStack {
            Image(systemName: "info.circle")
                .foregroundColor(foregroundColor)
            Text(nutrientTitle)
                .foregroundColor(foregroundColor)
                .font(.body)
                .fontWeight(.bold)
            
            Spacer()
            
            Text(nutrientValue)
                .font(.caption)
        }
    }
}

struct FruitNutrientRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientRowView(foregroundColor: .blue, nutrientTitle: "Energy", nutrientValue: "240g/100")
            .frame(maxWidth: 480)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
