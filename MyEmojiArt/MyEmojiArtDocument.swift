//
//  MyEmojiArtDocument.swift
//  MyEmojiArt
//
//  Created by Kevin Earls on 18/01/2022.
//

import SwiftUI

class MyEmojiArtDocument: ObservableObject
{
    @Published private (set) var emojiArt: MyEmojiArtModel
    
    init() {
        emojiArt = MyEmojiArtModel()
        emojiArt.addEmoji("🤣", at: (x: -200, y: -100), size: 80)
        emojiArt.addEmoji("⛵️", at: (x: 50, y: 100), size: 40)

    }
    
    var emojis: [MyEmojiArtModel.Emoji] { emojiArt.emojis }
    var background: MyEmojiArtModel.Background { emojiArt.background }
    
    // MARK: - Intent(s)
       
    func setBackground(_ background: MyEmojiArtModel.Background) {
        emojiArt.background = background
    }
       
    func addEmoji(_ emoji: String, at location: (x: Int, y: Int), size: CGFloat) {
        emojiArt.addEmoji(emoji, at: location, size: Int(size))
    }
       
    func moveEmoji(_ emoji: MyEmojiArtModel.Emoji, by offset: CGSize) {
        if let index = emojiArt.emojis.index(matching: emoji) {
            emojiArt.emojis[index].x += Int(offset.width)
            emojiArt.emojis[index].y += Int(offset.height)
        }
    }
       
    func scaleEmoji(_ emoji: MyEmojiArtModel.Emoji, by scale: CGFloat) {
        if let index = emojiArt.emojis.index(matching: emoji) {
            emojiArt.emojis[index].size = Int((CGFloat(emojiArt.emojis[index].size) * scale).rounded(.toNearestOrAwayFromZero))
        }
    }
}
