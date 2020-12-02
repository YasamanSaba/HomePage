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
                    
                
                ZStack {
                    Circle()
                        .stroke()
                        .foregroundColor(ColorPalette.mainBackground)
                        .background(Circle()
                                        .fill(ColorPalette.dayBackground))
                    Text("\(dayNum)")
                        .foregroundColor(isCurrentDay ? ColorPalette.currentDayFont : ColorPalette.calendarDayFont)
                }
                .padding(.top, 1)
                //.frame(width: geometry.size.width, height: geometry.size.width)
                .layoutPriority(1)
            }
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DayView(dayName: "SAT", dayNum: 28, isCurrentDay: true)
                .previewLayout(.sizeThatFits)
                .frame(width: 150, height: 200, alignment: .center)
            DayView(dayName: "MON", dayNum: 29, isCurrentDay: false)
                .previewLayout(.sizeThatFits)
                .frame(width: 150, height: 300, alignment: .center)
        }
    }
}
