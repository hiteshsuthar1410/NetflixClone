//
//  Movie.swift
//  Netflix clone
//
//  Created by Hitesh Suthar on 17/08/23.
//

import Foundation

struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let posterPath: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
    // MARK: - How to create custom coding keys?
    
    // Create an enum inside the type and name it 'CodingKeys'. It has to have this name only
    // That enum should conform to CodingKey and String (if incoming key is an String)
    // It should cover all properties of the type
    // Give the custom coding key name in case and assign the actual key to it
    // If we dont need custom name for a key then give the same key as of the incoming key.
    
    // MARK: - So crux is that the cases we define are replaces the actual key
    
    enum CodingKeys: String, CodingKey {
        case id
        case media_type
        case original_name
        case original_title
        case posterPath = "poster_path"
        case overview
        case vote_count
        case release_date
        case vote_average
    }
}
