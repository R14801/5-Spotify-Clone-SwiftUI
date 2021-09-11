//
//  AllData.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 18/04/21.
//

import Foundation

struct Playlist: Hashable, Codable {
    var img: String
    var name: String
    var genre: String
    var creator: String
}
