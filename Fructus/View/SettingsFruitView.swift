import SwiftUI

struct SettingsFruitView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage(Constants.AppStorageKeys.isOnBoarding) var isOnBoarding: Bool = false

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
                    
                    GroupBox(
                        label:
                            SettingsFruitLabelView(title: "Application", icon: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "Augue Iriure")
                        SettingRowView(name: "Designer", content: "Augue Iriure")
                        SettingRowView(name: "Website", linkLabel: "Google", linkDestination: "www.google.com/")
                        SettingRowView(name: "Linkedin", linkLabel: "Linkedin", linkDestination: "www.linkedin.com")
                    }

                    GroupBox(
                        label: SettingsFruitLabelView(title: "Customization", icon: "paintbrush")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        VStack {
                            Text("Lorem salutandi eu mea, eam in soleat iriure assentior. Tamquam lobortis id qui. Ea sanctus democritum mei, per eu alterum electram adversarium. Ea vix probo dicta iuvaret, posse epicurei suavitate eam an, nam et vidit menandri. Ut his accusata petentium.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                                Toggle(isOn: $isOnBoarding) {
                                    Text("Restart".uppercased())
                                }
                                .padding()
                                .background(
                                    Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                                )
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
            .preferredColorScheme(.dark)
    }
}
