//
//  UpComingEventsView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/2/20.
//

import SwiftUI

struct UpComingEventsView: View {
    let gradient = Gradient(colors: [ColorPalette.eventGradient1, ColorPalette.eventGradient2, ColorPalette.eventGradient1])
    
    var body: some View {
        GeometryReader { geomtry in
            ZStack {
                RoundedRectangle(cornerRadius: 9)
                    .fill(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
                
                Text("UPCOMING EVENTS")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(ColorPalette.whiteColor)
                
                ZStack {
                    Circle()
                        .foregroundColor(ColorPalette.whiteColor)
                    Text("0")
                        .font(.caption)
                }
                    
            }
        }
    }
}

struct UpComingEventsView_Previews: PreviewProvider {
    static var previews: some View {
        UpComingEventsView()
            .previewLayout(.sizeThatFits)
    }
}
