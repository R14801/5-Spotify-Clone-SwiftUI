//
//  AlbumDetailView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 19/04/21.
//

import SwiftUI

struct AlbumDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var albumdetails: AlbumDetails
    var albums: Album
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        VStack(alignment: .trailing) {
            HStack {
                Image(systemName: "chevron.backward") // set image here
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Spacer(minLength: 330)
                Image(systemName: "heart")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Image(systemName: "ellipsis")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(90))
            }
        }
    }.navigationBarHidden(false)
    }
    init(initalbum: AlbumDetails, initalbums: Album) {
        // this is not the same as manipulating the proxy directly
        let appearance = UINavigationBarAppearance()
        
        // this overrides everything you have set up earlier.
        appearance.configureWithTransparentBackground()
        
        // this only applies to big titles
        appearance.largeTitleTextAttributes = [
            .font : UIFont.systemFont(ofSize: 20),
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        // this only applies to small titles
        appearance.titleTextAttributes = [
            .font : UIFont.systemFont(ofSize: 20),
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        
        //In the following two lines you make sure that you apply the style for good
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        // This property is not present on the UINavigationBarAppearance
        // object for some reason and you have to leave it til the end
        UINavigationBar.appearance().tintColor = .white
        
        albumdetails = initalbum
        albums = initalbums
    }
    var body: some View {
        ZStack {
            Color.black
            LinearGradient(gradient: Gradient(stops: [.init(color: .red, location: 0.01), .init(color: darkGray, location: 0.3), .init(color: .black, location: 0.9)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Image(albums.img)
                        .padding()
                    Text(albums.album)
                        .foregroundColor(.white).bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 0.3)
                    Text("Album by \(albums.artist) • \(albums.year)")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .padding(.bottom, 7)
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("SHUFFLE PLAY")
                            .foregroundColor(.white).bold()
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .cornerRadius(60)
                    .padding(.vertical)
                    
                    HStack{
                        Text("Download")
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        }
                    }
                    .padding(.vertical)
                    ForEach(0..<albums.songs){ i in
                        AlbumListView(albumdetails: isles[i])
                    }
                    .padding(.bottom, 3)
                    HStack {
                        Text("\(albums.date), \(albums.year)")
                            .foregroundColor(.white).bold()
                        Spacer()
                    }
                    HStack {
                        Text("\(albums.songs) Songs • \(albums.time)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack{
                        Image(albums.artistimg)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Text(albums.artist)
                            .foregroundColor(.white).bold()
                        Spacer()
                    }
                    
                    Text("You might also like")
                        .foregroundColor(.white).bold()
                    
                }.padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top){
                        AlbumList(albums: albums)
                        AlbumList(albums: albums)
                        AlbumList(albums: albums)
                        AlbumList(albums: albums)
                        AlbumList(albums: albums)
                    }
                }.padding(.leading)
                .padding(.trailing)
            }.padding(.top, -20)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView(initalbum: isles[0], initalbums: albums[0])
    }
}
