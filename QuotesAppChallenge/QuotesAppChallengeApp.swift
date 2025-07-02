//
//  QuotesAppChallengeApp.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import SwiftUI
import SwiftData

@main
struct QuotesAppChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .modelContainer(for: [Quote.self])
        }
    }
}
