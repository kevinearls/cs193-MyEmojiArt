//
//  MyEmojiArtApp.swift
//  Shared
//
//  Created by Kevin Earls on 18/01/2022.
//

import SwiftUI

@main
struct MyEmojiArtApp: App {
    let document = MyEmojiArtDocument()
        
    var body: some Scene {
        WindowGroup {
            MyEmojiArtDocumentView(document: document)
        }
    }
}
