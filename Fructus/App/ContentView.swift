import SwiftUI

struct ContentView: View {
    
    @State var isShowingSettings: Bool = false
    var fruits: [Fruit]
    
    var body: some View {
        
        NavigationView {
            List {
                // shuffled es un metodo que te da el array de items de manera desordenada
                ForEach (fruits.shuffled()) { fruit in
                    NavigationLink(
                        destination: FruitDetailView(fruit: fruit),
                        label: {
                            FruitRowView(fruit: fruit)
                                .padding(.vertical, 4)
                        })
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSettings.toggle()
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                            .font(.title)
                                            .foregroundColor(Color.secondary)
                                        
                                    })
                                    .sheet(isPresented: $isShowingSettings, content: {
                                        SettingsFruitView()
                                    })
            )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
