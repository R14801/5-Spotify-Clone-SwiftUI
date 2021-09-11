//
//  ContentView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 08/04/21.
//

import SwiftUI
struct ContentView: View {
    let darkGray:Color = Color(red: 0.15, green: 0.15, blue: 0.15)
    init() {
        UITabBar.appearance().barTintColor = .black
    }
    var body: some View {
        TabView{
            HomeView(mainAlbums: albums[0], mainPodcasts: podcasts[0])
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            SearchView(mainplaylists: playlists[0])
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
                    
                    
                    LibraryView()
                        .tabItem {
                            Image(systemName: "books.vertical")
                            Text("Library")
                        }.tag(2)
                        
        }.accentColor(.white)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
