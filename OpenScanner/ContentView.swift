//
//  ContentView.swift
//  OpenScanner
//
//  Created by Aarav Gupta on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showIntroView") private var showIntroView: Bool = true
    var body: some View {
        Home()
            .sheet(isPresented: $showIntroView) {
                IntroScreen()
                    .interactiveDismissDisabled()
            }
    }
}

#Preview {
    ContentView()
}
