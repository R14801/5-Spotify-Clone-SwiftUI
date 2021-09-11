//
//  ShowRow.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 19/04/21.
//

import SwiftUI

struct ShowRow: View {
    var podcasts: Podcast
    var body: some View {
        
        HStack{
            Image(podcasts.img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .cornerRadius(5)
            VStack(alignment: .leading){
                Text(podcasts.podcast)
                    .font(.system(size: 15, weight: .bold))
                Text("Updated \(podcasts.time) • \(podcasts.network)")
                    .font(.system(size: 13, weight: .bold))
                    .opacity(0.7)
            }.foregroundColor(.white)
            Spacer()
        }
    }
}

struct ShowRow_Previews: PreviewProvider {
    static var previews: some View {
        ShowRow(podcasts: podcasts[0])
    }
}
