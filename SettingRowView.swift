import SwiftUI

struct SettingRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)

            HStack (alignment: .center, spacing: 10) {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.accentColor)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Augue / Iriure", content: "Augue Iriure", linkLabel: "Google", linkDestination: "www.google.com")
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 365, height: 80))
                .padding()
            SettingRowView(name: "Augue / Iriure", linkLabel: "Google", linkDestination: "www.google.com/")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 365, height: 80))
                .padding()
        }
    }
}
