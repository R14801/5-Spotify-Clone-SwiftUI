//
//  AllData.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 18/04/21.
//

import Foundation

struct Album: Hashable, Codable {
    var img: String
    var album: String
    var artistimg: String
    var artist: String
    var badge: Bool
    var year: String
    var date: String
    var songs: Int
    var time: String
    var cright: String
}
