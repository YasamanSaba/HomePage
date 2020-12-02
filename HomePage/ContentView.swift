//
//  ContentView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ColorPalette.mainBackground
                VStack {
                    WholeCalendar()
                        .frame(height: geometry.size.height * 0.156)
                        .padding()
//                    Spacer()
                    SummaryProgressView()
                        .frame(height: geometry.size.height * 0.156)
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
