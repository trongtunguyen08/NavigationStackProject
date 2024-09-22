//
//  FirstTanDetailView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct FirstTabDetailView: View {
    let text: String
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Text("Detail view of \(text)")
            
            Divider()
            
            NavigationLink("Show CCC", value: "CCC")
            
            NavigationLink("Go to number 3", value: 3)
        }
        .navigationTitle("Detail")
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    path.removeLast()
                } label: {
                    Image(systemName: "chevron.left.circle")
                }

            }
        }
    }
}

#Preview {
    NavigationStack {
        FirstTabDetailView(text: "ABC", path: .constant(NavigationPath()))
    }
}
