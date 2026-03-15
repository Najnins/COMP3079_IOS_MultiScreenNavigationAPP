//
//  DetailView.swift
//  MultiScreenNavigationAPP
//
//  Created by Najnin on 2026-03-14.
//
import SwiftUI

struct DetailView: View {
    let selectedTitle: String

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Selected Book")
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(selectedTitle)
                    .font(.title)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding()

                NavigationLink(destination: InfoView()) {
                    Text("Go to Info Screen")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding()
            .navigationTitle("Detail")
        }
    }
}

#Preview {
    DetailView(selectedTitle: "Swift Programming")
}
