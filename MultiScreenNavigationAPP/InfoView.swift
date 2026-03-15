//
//  InfoView.swift
//  MultiScreenNavigationAPP
//
//  Created by Najnin on 2026-03-14.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("About This App")
                .font(.title)
                .fontWeight(.bold)

            Text("This app demonstrates multi-screen navigation in SwiftUI using NavigationStack, NavigationLink, and passing data between screens.")
                .multilineTextAlignment(.center)
                .padding()

            Button("Go Back") {
                dismiss()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)

            Spacer()
        }
        .padding()
        .navigationTitle("Info")
    }
}

#Preview {
    InfoView()
}
