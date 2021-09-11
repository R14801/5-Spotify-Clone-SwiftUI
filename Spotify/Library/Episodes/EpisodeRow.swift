//
//  EpisodeRow.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 19/04/21.
//

import SwiftUI

struct EpisodeRow: View {
    var podcasts: Podcast
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(podcasts.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(5)
                VStack(alignment: .leading, spacing: 5){
                    Text(podcasts.episode)
                        .font(.system(size: 15, weight: .bold))
                        .kerning(-0.5)
                    Text(podcasts.podcast)
                        .font(.system(size: 12))
                        .opacity(0.7)
                }
            }
            Text(podcasts.desc)
                .font(.system(size: 12, weight: .bold))
                .lineSpacing(3.6)
                .frame(height: 50)
                .opacity(0.7)
            Text("\(podcasts.time) • \(podcasts.duration) min")
                .font(.system(size: 13, weight: .bold))
                .opacity(0.7)
            HStack(spacing: 15){
                Image(systemName: "checkmark")
                Image(systemName: "plus.circle")
                Image(systemName: "arrow.down.circle")
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                Spacer()
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 25))
            }.font(.system(size: 20))
            .padding([.top,.bottom], 5)
            Rectangle()
                .frame(height: 0.5)
                .opacity(0.4)
        }.padding(.bottom, 10)
    }
}

struct EpisodeRow_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRow(podcasts: podcasts[0])
    }
}
