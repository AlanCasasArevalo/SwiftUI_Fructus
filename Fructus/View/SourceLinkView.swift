//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Alan Casas on 03/06/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Go to wikipedia")
                Spacer()
                Link(destination: URL(string: "https://es.wikipedia.org/wiki/Wikipedia:Portada")!) {
                }
                Image(systemName: "chevron.right")
            }
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
