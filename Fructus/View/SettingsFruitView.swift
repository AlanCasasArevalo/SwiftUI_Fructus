import SwiftUI

struct SettingsFruitView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    
                    GroupBox(
                        label:
                            SettingsFruitLabelView(title: "Fructus", icon: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9.0)
                            Text("Has maiorum habemus detraxit at. Timeam fabulas splendide et his. Facilisi aliquando sea ad, vel ne consetetur adversarium. Integre admodum et his, nominavi urbanitas et per, alii reprehendunt et qui. His ei meis legere nostro, eu kasd fabellas definiebas mei, in sea augue iriure.")
                                .font(.footnote)
                        }
                    }
                    
                }
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .padding()
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            }
        }
    }
}

struct SettingsFruitView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsFruitView()
    }
}
