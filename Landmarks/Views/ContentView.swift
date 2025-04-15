//
//  ContentView.swift
//  Landmarks
//
//  Created by John Kearon on 4/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                VStack {
                    Text("Turtle Rock")
                        .font(.title)
                }
                HStack {
                    Text("Joshua Tree National Park")
                     Spacer()
                    Text("California")
                 }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Desriptive text goes here.")
            }
            .padding()
            
            Spacer()
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
