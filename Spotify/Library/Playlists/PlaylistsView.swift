//
//  PlaylistsView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 13/04/21.
//

import SwiftUI
struct PlaylistsView: View {
    @State var srch: String = ""
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView{
                HStack {
                    Spacer(minLength: 0)
                    HStack (alignment: .center,
                            spacing: 10) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: .center)
                            .foregroundColor(.black)

                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)

                        TextField ("Find in playlists", text: $srch).frame(height: 20)
                    }  // HSTack
                    .padding([.top,.bottom], 2)
                    .padding(.leading, 5)
                    .background(Color.white, alignment: .center)
                    .cornerRadius(5)
                    Spacer()
                    Button("Filters"){
                    }.padding(9)
                    .cornerRadius(5)
                    .foregroundColor(.gray)
                    .background(Color.gray).opacity(0.4)
                }.padding(.bottom, 5)
                HStack{
                    Image(systemName: "plus")
                        .clipShape(Rectangle())
                        .frame(width: 65, height: 65)
                        .background(darkGray)
                    Text("Create playlist")
                        .font(.headline).bold()
                        .padding(.leading, 10)
                    Spacer()
                }.padding(.bottom, 1)
                HStack{
                    Image(systemName: "heart.fill")
                        .clipShape(Rectangle())
                        .frame(width: 65, height: 65)
                        .background(LinearGradient(gradient: Gradient(colors: [.purple, .pink, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    VStack(alignment: .leading) {
                        Text("Liked songs")
                            .font(.headline).bold()
                        Text("69 songs")
                            .font(.subheadline).opacity(0.7)
                    }.padding(.leading, 10)

                    Spacer()
                }.padding(.bottom, 1)
                PlaylistRow(playlists: playlists[0])
                PlaylistRow(playlists: playlists[1])
                PlaylistRow(playlists: playlists[2])
                PlaylistRow(playlists: playlists[3])
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView()
    }
}
