//
//  ContentView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { outerGeo in
            VStack {
                MyView()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 9)
                        .frame(width: 400, height: 400, alignment: .center)
                        .onTapGesture(count: 1, perform: {
                            print("OuterGeo: w \(outerGeo.size.width) : h \(outerGeo.size.height)")
                            print("OuterGeo(.local): w \(outerGeo.frame(in: .local).size.width) : h \(outerGeo.frame(in: .local).size.height)")
                            print("OuterGeo(.global): w \(outerGeo.frame(in: .global).size.width) : h \(outerGeo.frame(in: .global).size.height)")
                            
                        })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}

struct MyView: View {
    var body: some View {
        GeometryReader { geo in
            RoundedRectangle(cornerRadius: 9)
                .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                    print("InnerGeo: w \(geo.size.width) : h \(geo.size.height)")
                    print("InnerGeo(.local): w \(geo.frame(in: .local).size.width) : h \(geo.frame(in: .local).size.height)")
                    print("InnerGeo(.global): w \(geo.frame(in: .global).size.width) : h \(geo.frame(in: .global).size.height)")
                })
        }
    }
}
