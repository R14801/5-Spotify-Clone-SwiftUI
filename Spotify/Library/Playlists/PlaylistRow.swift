//
//  PlaylistRow.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 19/04/21.
//

import SwiftUI

struct PlaylistRow: View {
    var playlists: Playlist
    var body: some View {
        HStack{
            Image(playlists.img)
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 65, height: 65)
                .background(darkGray)
            VStack(alignment: .leading) {
                Text(playlists.name)
                    .font(.headline).bold()
                Text(playlists.creator)
                    .font(.subheadline)
                    .opacity(0.7)
            }.padding(.leading, 10)
            Spacer()
        }
    }
    }

struct PlaylistRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistRow(playlists: playlists[0])
    }
}
