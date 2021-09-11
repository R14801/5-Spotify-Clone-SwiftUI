//
//  AlbumListView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 23/04/21.
//

import SwiftUI

struct AlbumListView: View {
    var albumdetails: AlbumDetails
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text(albumdetails.title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(albumdetails.artists)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.system(size: 25))
                    .rotationEffect(.degrees(90))
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
            }
        }
    }
}

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView(albumdetails: isles[0])
            .previewLayout(.sizeThatFits)
    }
}
