//
//  DownloadsView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 15/04/21.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center){
                Text("No downloads yet")
                    .font(.system(size: 25)).bold()
                    .foregroundColor(.white)
                HStack {
                    Text("Tap")
                        .kerning(-0.2)
                    Image(systemName: "arrow.down.circle")
                    VStack {
                        Text("on an episode to listen without a connection")
                            .kerning(-0.2)
                    }
                }.foregroundColor(.white)
                .font(.system(size: 12))
                .padding(.top, 3)
                .padding(.bottom)
                
                Button("BROWSE") {
                    
                }
                .padding([.top, .bottom], 10)
                .padding([.leading, .trailing], 25)
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(15)
                
            }
        }
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadsView()
    }
}
