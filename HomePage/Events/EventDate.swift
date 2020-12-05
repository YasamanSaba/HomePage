//
//  EventDate.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/5/20.
//

import SwiftUI

struct EventDate: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(ColorPalette.summaryBackground)
                HStack(spacing: 0) {
                Text("Monday, ")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(ColorPalette.blueColor)
                    .padding(.leading, geometry.size.width * 0.038)
                Text("November 23")
                    .font(.footnote)
                    .foregroundColor(ColorPalette.dayFont)
                }
            }
        }
    }
}

struct EventDate_Previews: PreviewProvider {
    static var previews: some View {
        EventDate()
            .previewLayout(.sizeThatFits)
            .frame(width: 753.83, height: 79.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
