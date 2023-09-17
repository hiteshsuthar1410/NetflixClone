//
//  YoutubeSearchResponse.swift
//  Netflix clone
//
//  Created by Hitesh Suthar on 17/09/23.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IDVideoElement
}

struct IDVideoElement: Codable {
    let kind: String
    let videoId: String
}
