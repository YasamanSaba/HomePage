//
//  DayView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/28/20.
//

import SwiftUI

struct DayView: View {
    let dayName: String
    let dayNum: Int
    let isCurrentDay: Bool
    let hasInterview: Bool
    let hasTask: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 1, height: geometry.size.height * 0.1)
                    .padding(0)
                    .foregroundColor(isCurrentDay ? ColorPalette.currentDayFont : Color.clear)
                Text(dayName)
                    .font(.footnote)
                    .foregroundColor(isCurrentDay ? ColorPalette.currentDayFont : ColorPalette.calendarDayFont)
                    .padding(0)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 1, height: geometry.size.height * 0.1)
                    .padding(0)
                    .foregroundColor(isCurrentDay ? ColorPalette.currentDayFont : Color.clear)
                    
                
                CalendarCircleView(dayNum: dayNum, isCurrentDay: isCurrentDay, hasInterview: hasInterview, hasTask: hasTask)
                    
                
                
            }
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DayView(dayName: "SAT", dayNum: 28, isCurrentDay: true, hasInterview: true, hasTask: true)
                .previewLayout(.sizeThatFits)
                .frame(width: 150, height: 230, alignment: .center)
            DayView(dayName: "MON", dayNum: 29, isCurrentDay: false, hasInterview: false, hasTask: true)
                .previewLayout(.sizeThatFits)
                .frame(width: 150, height: 300, alignment: .center)
        }
    }
}


struct CalendarCircleView: View {
    let dayNum: Int
    let isCurrentDay: Bool
    let hasInterview: Bool
    let hasTask: Bool
    
    var body: some View {
        GeometryReader { geo in
            
            let leftCircleX = geo.size.height < geo.size.width ? (geo.size.width - geo.size.height) / 2 : 0
            let rightCircleX = geo.size.height < geo.size.width ? (geo.size.width - (geo.size.width - geo.size.height) / 2) : geo.size.width
            
            ZStack {
                Circle()
                    .stroke()
                    .foregroundColor(ColorPalette.mainBackground)
                    .background(Circle()
                                    .fill(ColorPalette.dayBackground))
                
                Text("\(dayNum)")
                    .foregroundColor(isCurrentDay ? ColorPalette.currentDayFont : ColorPalette.calendarDayFont)
                
                    Circle()
                        .fill(hasInterview ? ColorPalette.redColor : Color.clear)
                        .frame(width: geo.size.width * 0.215)
                        .position(x: leftCircleX, y: geo.size.height / 2)
                        .mask(Circle())


                    Circle()
                        .fill(hasTask ? ColorPalette.greenColor : Color.clear)
                        .frame(width: geo.frame(in: .local).width * 0.215)
                        .position(x: rightCircleX, y: geo.size.height / 2)
                        .mask(Circle())

                
            }
            .padding(.top, 1)
            //.frame(width: geometry.size.width, height: geometry.size.width)
            .layoutPriority(1)
        }
    }
}
