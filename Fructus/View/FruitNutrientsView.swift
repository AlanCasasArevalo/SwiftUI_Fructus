//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Alan Casas on 04/06/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    @State var shouldExpandMenu = false
    let nutrients = ["Energy", "Sugar", "Fat", "Proteins", "Vitamins", "Minterals"]

    var body: some View {
        // Manera 1 de hacerlo
        /*
        GroupBox {
            VStack (alignment: .leading) {
                HStack {
                    Text("Nutrients")
                    Spacer()
                    Image(systemName: shouldExpandMenu ? "chevron.down" : "chevron.right")
                }
            }
            if shouldExpandMenu {
                VStack(alignment: .leading) {
                    ForEach(0..<fruit.nutrition.count, id: \.self) { index in
                        FruitNutrientRowView(foregroundColor: fruit.gradientColors.first ?? .black, nutrientTitle: nutrients[index], nutrientValue: fruit.nutrition[index])
                            .padding(.vertical, 8)
                    }
                }
                .padding(.top, shouldExpandMenu ? 8 : 0)

            }
        }
        .onTapGesture {
            shouldExpandMenu.toggle()
        }
         */
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<fruit.nutrition.count, id: \.self) { index in
                    FruitNutrientRowView(foregroundColor: fruit.gradientColors.first ?? .black, nutrientTitle: nutrients[index], nutrientValue: fruit.nutrition[index])
                        .padding(.vertical, 8)
                }
            }
        }
        
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
