//
//  WholeCalendar.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/30/20.
//

import SwiftUI

struct WholeCalendar: View {
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        ZStack {
                            Image("CalnedarHeadIcon")
                                .resizable()
                                .frame(width: geo.size.width * 0.1684, height: geo.size.width * 0.1684)
                            
                            Text("8")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(ColorPalette.calendarMonthName)
                        }
                        
                        
                        
                        CurveShape()
                            .frame(width: geo.size.width * 0.168, height: geo.size.width * 0.154 * 0.1261, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(ColorPalette.calendarBackground)
                    }
                    Spacer()
                    
                }
                .padding(.leading, geo.size.width * 0.021)
                
                CalendarView()
                    .frame(height: geo.size.height * 0.472)
            }
        }
    }
}

struct WholeCalendar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WholeCalendar()
                .preferredColorScheme(.dark)
                
                .frame(height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                //.previewLayout(.sizeThatFits)
                .padding()
         
        }
    }
}
