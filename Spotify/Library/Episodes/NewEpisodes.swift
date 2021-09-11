//
//  NewEpisodes.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 19/04/21.
//

import SwiftUI

struct NewEpisodes: View {
    var podcasts: Podcast
    let prgress = CGFloat.random(in: 0 ... 30)
    var body: some View {
        HStack{
            Image(podcasts.img)
                .resizable()
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(5)
                .padding(10)
            VStack(alignment: .leading, spacing: 5){
                Text(podcasts.episode)
                    .font(.system(size: 12, weight: .bold))
                HStack{
                    Text("\(podcasts.time) • \(podcasts.timeleft) min left")
                    .font(.system(size: 10))
                    .kerning(-0.2)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    Spacer()
                    ZStack(alignment: .leading){
                    Rectangle()
                        .frame(width: 100, height: 4)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .opacity(0.2)
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: prgress, height: 4)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    }.padding(.trailing, 50)
                }
            }.foregroundColor(.white)
            Spacer()
            Image(systemName: "checkmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15, height: 15)
                .foregroundColor(.white)
                .opacity(0.3)
            Spacer()
        }.background(darkGray)
        .cornerRadius(5)
    }
}

struct NewEpisodes_Previews: PreviewProvider {
    static var previews: some View {
        NewEpisodes(podcasts: podcasts[0])
    }
}
