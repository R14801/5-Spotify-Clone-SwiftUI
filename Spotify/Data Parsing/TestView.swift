//
//  TestView.swift
//  Spotify
//
//  Created by Rajat Nagvenker on 18/04/21.
//

import SwiftUI

struct TestView: View {
    init() {
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
            
        }
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea([.all])
                NavigationLink(destination: TestViewSec()) {
                    Text("push")
                }
            }
            .navigationBarTitle(Text("Home")
                                    .foregroundColor(.white)
                                    .font(.title), displayMode: .inline)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
        
    }
}
