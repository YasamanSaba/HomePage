//
//  FirstEventView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/3/20.
//

import SwiftUI

struct FirstEventView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .foregroundColor(ColorPalette.calendarBackground)
                
                PuzzleLine()
                    .stroke()
                
                Text("17:30")
                    .font(.footnote)
                    .foregroundColor(ColorPalette.redColor)
                    .position(x: geometry.size.width * 0.09, y: geometry.size.height * 0.292)
                
                
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 2, height: geometry.size.height * 0.239)
                    .position(x: geometry.size.width * 0.164, y: geometry.size.height * 0.292)
                    .foregroundColor(ColorPalette.redColor)

                    

                    VStack(alignment: .leading) {
                        Text("INTERVIEW")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(ColorPalette.currentDayFont)
                        
                        Text("Coffee IT, Brad Pitt")
                            .font(.footnote)
                            .foregroundColor(ColorPalette.calendarDayFont)
                        
                        Text("Restaurant Application")
                            .font(.footnote)
                            .foregroundColor(ColorPalette.calendarDayFont)
                        
                        
                    }
                    .padding(.leading, geometry.size.width * 0.207)
                    .padding(.bottom, (geometry.size.height * 0.084 + 5))
                    .padding(.top, (geometry.size.height * 0.084 + 5))
            }
        }
    }
}

struct PuzzleLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: rect.height * 0.091))
            path.addLine(to: CGPoint(x: rect.width * 0.13, y: rect.height * 0.091))
            path.addQuadCurve(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.091), control: CGPoint(x: rect.width * 0.164, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height * 0.091))
        }
    }
}


struct FirstEventView_Previews: PreviewProvider {
    static var previews: some View {
        FirstEventView()
            .previewLayout(.sizeThatFits )
            .frame(width: 301.54, height: 63.26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
