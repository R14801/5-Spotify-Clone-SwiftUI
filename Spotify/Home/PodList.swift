//
//  PodList.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 18/04/21.
//

import SwiftUI

struct PodList: View {
    var podcasts: Podcast
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image(podcasts.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Text(podcasts.podcast)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .padding(.top, 2)
                Text("Show · \(podcasts.network)")
                    .foregroundColor(.white)
                    .font(.system(size:13))
                    .padding(.top, 1)
            }
            .frame(width: 150)
        }
    }
}

struct PodList_Previews: PreviewProvider {
    static var previews: some View {
        PodList(podcasts: podcasts[0])
    }
}
