//
//  UpComingEventsView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/2/20.
//

import SwiftUI

struct UpComingEventsView: View {
    @Binding var eventsCount: Int
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 9)
                        .fill(ColorPalette.blueColor)
                    UpComingEventsCountView(eventsCount: $eventsCount)
                        .frame(height: geo.size.height / 2)
                        .position(x: geo.size.width * 0.8, y:  0)
                    Text("UPCOMING EVENTS")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(ColorPalette.whiteColor)
                }
                UpComingEventsTriangleView(eventsCount: $eventsCount)
                    .frame(width: geo.size.width * 0.1, height: geo.size.width * 0.05)
            }
        }
    }
}


struct UpComingEventsCountView: View {
    @Binding var eventsCount: Int
    
    var body: some View {
        ZStack {
            Circle()
                .fill(ColorPalette.whiteColor)
            Text("\(eventsCount)")
                .font(.caption)
                .foregroundColor(ColorPalette.redColor)
        }
    }
}

struct UpComingEventsTriangleView: View {
    @Binding var eventsCount: Int
    var body: some View {
        GeometryReader { geomtry in
            ZStack {
                HalfCircleShape()
                    .fill(ColorPalette.blueColor)
                
                VStack {
                    if eventsCount == 0 {
                    Image("TriangleEmpty")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geomtry.size.width * 0.516, height: geomtry.size.height * 0.591)
                    } else {
                        Image("TriangleFilled")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geomtry.size.width * 0.516, height: geomtry.size.height * 0.591)
                    }
                    Spacer()
                }
            }
        }
        
    }
}

struct HalfCircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.addArc(center: CGPoint(x: rect.width / 2, y: 0),
                        radius: rect.width / 2,
                        startAngle: .degrees(0),
                        endAngle: .degrees(180),
                        clockwise: false)
            
            path.closeSubpath()
        }
    }
}

struct TriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 9, y: 0))
                        path.addLine(to: CGPoint(x: rect.width - 9, y: 0))
                        path.addQuadCurve(to: CGPoint(x: rect.width - 9, y: 9),
                                          control: CGPoint(x: rect.width, y: 0))
                        path.addLine(to: CGPoint(x: rect.width / 2 + 9, y: rect.height - 9))
                        path.addQuadCurve(to: CGPoint(x: rect.width / 2 - 4.5, y: rect.height - 4.5), control: CGPoint(x: rect.width / 2, y: rect.height))
            path.addLine(to: CGPoint(x: 9, y: 9))
            path.addQuadCurve(to: CGPoint(x: 9, y: 0), control: CGPoint(x: 0, y: 0))
        }
    }
}


struct UpComingEventsView_Previews: PreviewProvider {
    @State static var eventsCount: Int = 0
    static var previews: some View {
        UpComingEventsView(eventsCount: $eventsCount)
            .previewLayout(.sizeThatFits)
            .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
