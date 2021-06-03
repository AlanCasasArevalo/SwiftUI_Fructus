import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit]
    
    var body: some View {
        
        NavigationView {
            List {
                // shuffled es un metodo que te da el array de items de manera desordenada
                ForEach (fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
