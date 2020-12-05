//
//  CalendarHead.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/30/20.
//

import SwiftUI

struct CalendarHead: View {
    var body: some View {
        ZStack{
            Image("CalnedarHeadIcon")
            Text("28")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(ColorPalette.calendarMonthName)
        }
    }
}

struct CalendarHead_Previews: PreviewProvider {
    static var previews: some View {
        CalendarHead()
            .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
