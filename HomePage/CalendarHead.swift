//
//  CalendarHead.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/30/20.
//

import SwiftUI

struct CalendarHead: View {
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                Image("CalnedarHeadIcon")
                    
                    .resizable()
                    
                    .frame(height: geo.size.height * 0.9)
                
                CurveShape()
                    .fill(Color("CalendarBackground"))
                    .frame(width: geo.size.width * 0.92, height: geo.size.height * 0.1)
            }
        }
    }
}

struct CurveShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: rect.width * 0.115))
            path.addQuadCurve(to: CGPoint(x: rect.width, y: rect.width * 0.115),
                              control: CGPoint(x: rect.width / 2, y: -(rect.width * 0.115)))
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
