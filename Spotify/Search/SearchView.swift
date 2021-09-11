//
//  SearchView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 13/04/21.
//

import SwiftUI

func random()->Color {
    let r = Double.random(in: 0 ... 1)
    let g = Double.random(in: 0 ... 1)
    let b = Double.random(in: 0 ... 1)
    return Color(red: r, green: g, blue: b)
  }
let randcolor: Color = random()

struct SearchView: View {
    var mainplaylists: Playlist
    @State var srch: String = ""
    var body: some View {
        ZStack(alignment: .leading) {
            LinearGradient(gradient: Gradient(colors: [.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading){
                    Text("Search")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 5)
                    
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
                            
                            TextField ("Artists, songs, or podcasts", text: $srch).frame(height: 40)
                        }  // HSTack
                        .padding([.top,.bottom], 2)
                        .padding(.leading, 5)
                        .background(Color.white, alignment: .center)
                        .cornerRadius(5)
                        Spacer(minLength: 0)
                    }.padding(.bottom, 5)
                    
                    Text("Your top genres")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    HStack{
                        Spacer()
                        GenreView(playlists: playlists[0])
                        GenreView(playlists: playlists[1])
                        GenreView(playlists: playlists[2])
                        Spacer()
                    }
                    HStack{
                    GenreView(playlists: playlists[3])
                        .padding(.leading, 10)
                        Spacer()
                    }
                    
                    Text("Browse All")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.top, 10)
                    
                    ForEach(0..<5){_ in
                    HStack{
                        Spacer()
                        GenreView(playlists: playlists[0])
                        GenreView(playlists: playlists[1])
                        GenreView(playlists: playlists[2])
                        Spacer()
                    }.padding(.bottom, 5)
                    }
                    Spacer()
                }.padding()
            }
        }.foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(mainplaylists: playlists[0])
    }
}
