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
                    VStack(spacing: 0) {
                    HStack {
                    Image("CalnedarHeadIcon")
                        .resizable()
                        .scaledToFit()
                        Spacer()
                    Image("SettingIcon")
                        .resizable()
                        .scaledToFit()
                    }
                    .frame(width: geometry.size.width * 0.904, height: geometry.size.height * 0.074)

                    CalendarView()
                        .frame(width: geometry.size.width * 0.964, height: geometry.size.height * 0.082)
                    
                    }
                    HStack {
                    WeatherView()
                        .frame(width: geometry.size.width * 0.303, height: geometry.size.height * 0.082)
//                    SummaryProgressView()
                        SummaryView()
                        .frame(width: geometry.size.width * 0.639 , height: geometry.size.height * 0.082)
                    }
                    
                    
                    UpComingEventsView(eventsCount: $eventsCount)
                        .frame(height: geometry.size.height * 0.06)
                        .padding(5)
                        .padding(.top, 20)
                        .zIndex(1)
                    
                    VStack(spacing: 0) {
                    EventDate()
                        .frame(height: geometry.size.height * 0.05)
                        
                    
                    FirstEventView()
                        .frame(height: geometry.size.height * 0.093)
                        
                        FirstEventView()
                            .frame(height: geometry.size.height * 0.093)
                    }
                    .padding([.leading, .trailing], 6)
                    .padding(.top, -25)
                    
                
                    Spacer()
                    
                    TabBarView()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.15)
                        
                }
                .ignoresSafeArea()
                .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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

