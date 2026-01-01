//
//  ContentView.swift
//  ConcentricCorners
//
//  Created by Abdelrahman Mohamed on 01.01.2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 16) {
                Image(.cursor2025Models)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(.rect(corners: .concentric, isUniform: true))
                
                VStack(alignment: .leading) {
                    Text("Episode 1")
                        .font(.title3.bold())
                    
                    Text("Episode Description")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                }
                
                Button {
                    isPresented = true
                } label: {
                    Text("Watch Now")
                        .font(.title3.bold())
                        .foregroundStyle(.white)
                        .padding()
                        .background(.indigo)
                }
            }
            .padding(20)
        }
        .background(.secondary.opacity(0.20))
        .containerShape(.rect(cornerRadius: 34, style: .continuous))
        .sheet(isPresented: $isPresented) {
            ConcentricRectangle()
                .fill(.indigo.gradient)
                .padding(20)
                .ignoresSafeArea()
                .presentationDetents(
                    [
                        .fraction(0.125),
                        .fraction(0.25),
                        .medium,
                        .fraction(0.75),
                        .large
                    ]
                )
        }
    }
}

#Preview {
    ContentView()
}
