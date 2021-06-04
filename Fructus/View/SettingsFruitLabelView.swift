import SwiftUI

struct SettingsFruitLabelView: View {
    
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(title.uppercased())
            Spacer()
            Image(systemName: icon)
        }
        
    }
}

struct SettingsFruitLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsFruitLabelView(title: "Fructus", icon: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
