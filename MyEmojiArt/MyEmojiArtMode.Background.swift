//
//  MyEmojiArtMode.Background.swift
//  MyEmojiArt
//
//  Created by Kevin Earls on 18/01/2022.
//

import Foundation

extension MyEmojiArtModel {
    enum Background {
        case blank
        case url(URL)
        case imageData(Data)
        
        var url: URL? {
            switch self {
                case .url(let url): return url
                default: return nil
            }
        }
                
        var imageData: Data? {
            switch self {
                case .imageData(let data): return data
                default: return nil
            }
        }
    }
}
