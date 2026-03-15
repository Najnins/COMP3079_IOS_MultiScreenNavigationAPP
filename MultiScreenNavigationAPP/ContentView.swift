//
//  ContentView.swift
//  MultiScreenNavigationAPP
//
//  Created by Najnin on 2026-03-14.
//
import SwiftUI

struct ContentView: View {
    let books = [
        "Swift Programming",
        "iOS Development Basics",
        "Learning SwiftUI",
        "Mobile App Design",
        "Advanced Xcode"
    ]

    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to the Book Navigation App")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()

                List(books, id: \.self) { book in
                    NavigationLink(destination: DetailView(selectedTitle: book)) {
                        Text(book)
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}

