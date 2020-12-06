//
//  ContentView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/28/20.
//

import SwiftUI

struct ContentView: View {
    @State var eventsCount: Int = 6
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ColorPalette.mainBackground
                    .ignoresSafeArea()
                    
                VStack {
                    HStack {
                    Image("CalnedarHeadIcon")
                        .resizable()
                        .scaledToFit()
                        Spacer()
                    Image("SettingIcon")
                        .resizable()
                        .scaledToFit()
                    }
                    .frame(width: geometry.size.width * 0.924, height: geometry.size.height * 0.074)

                    CalendarView()
                        .frame(width: geometry.size.width * 0.964, height: geometry.size.height * 0.082)
                    
                    
                    HStack {
                    WeatherView()
                        .frame(width: geometry.size.width * 0.304, height: geometry.size.height * 0.082)
//                    SummaryProgressView()
                        SummaryView()
                        .frame(width: geometry.size.width * 0.639 , height: geometry.size.height * 0.082)
                    }
                    
                    UpComingEventsView(eventsCount: $eventsCount)
                        .frame(height: geometry.size.height * 0.06)
                        .padding(5)
                    
                    VStack(spacing: 0) {
                    EventDate()
                        .frame(height: geometry.size.height * 0.05)
                        
                    
                    FirstEventView()
                        .frame(height: geometry.size.height * 0.093)
                        
                        FirstEventView()
                            .frame(height: geometry.size.height * 0.093)
                    }
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    Spacer()
                    
                    TabBarView()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.15)
                        
                }
                .ignoresSafeArea()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                            .previewDisplayName("iPhone XS Max")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                            .previewDisplayName("iPhone SE")
        }
        
    }
}

