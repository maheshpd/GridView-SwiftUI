//
//  ContentView.swift
//  GridView SwiftUI
//
//  Created by Mahesh Prasad on 23/08/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        grid()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct grid : View {
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    ForEach(1..<6) {i in
                        
                        HStack {
                            Image("vest101").resizable().frame(width: geo.size.width / 2 - 20).background(Color.blue)
                                .cornerRadius(15)
                            
                            Image("vest101").resizable().frame(width: geo.size.width / 2 - 20).background(Color.blue)
                                .cornerRadius(15)
                            
                        }.frame(height: UIDevice.current.orientation.isLandscape ? 300 : 150)
                        
                    }
                }
                
            }
        }
    }
}

//when screen is rotated images are streching to avoid this..
