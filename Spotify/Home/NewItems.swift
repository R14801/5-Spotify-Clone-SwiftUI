//
//  NewItems.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 18/04/21.
//

import SwiftUI

struct NewItems: View {
    var album: Album
    var body: some View {
        HStack{
            ZStack(alignment: .leading) {
                Color(.darkGray)
                HStack{
                    Image(album.img)
                        .resizable()
                        .clipShape    (RoundedRectangle(cornerRadius: 0))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                    Text(album.album)
                        .font(.system(size: 13))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding(.leading, 5)
                    Spacer()
                    if album.badge == true {
                    Image(systemName: "circlebadge.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 7, height: 7)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 5)
                    }
                    else {
                        Spacer()
                    }
                }
            }
        }.frame(width: 190, height: 60, alignment: .leading)
        .cornerRadius(5)
    }
}

struct NewItems_Previews: PreviewProvider {
    static var previews: some View {
        NewItems(album: albums[0])
    }
}
