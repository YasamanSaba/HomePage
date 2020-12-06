//
//  TabBarView.swift
//  HomePage
//
//  Created by Sam Javadizadeh on 12/3/20.
//  H:4688  W:1270

import SwiftUI

struct TabBarView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack(spacing: geo.size.height * 0.0645) {
                    Image("AddButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geo.size.width * 0.1066)
                    
                TabBarBottomShape()
                    .fill(ColorPalette.dayBackground)
                    
                    .overlay(TabBarBottomLines()
                                .stroke(lineWidth: 2)
                                .foregroundColor(ColorPalette.blueColor))
                }
                
                Image("HomeTab")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(Circle().stroke(lineWidth: 1).foregroundColor(.blue).saturation(5).blur(radius: 0.5) )
                    .frame(width: geo.size.width * 0.1601)
                    .position(x: geo.size.width * 0.1990, y: geo.size.height * 0.4598)
                    .brightness(0.1)
                
                Text("Home")
                    .foregroundColor(ColorPalette.dayFont)
                    .font(.footnote)
                    .position(x: geo.size.width * 0.1990, y: geo.size.height * 0.8771)
                    
                
                Image("AppliesTab")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width * 0.1601)
                    .position(x: (geo.size.width - (geo.size.width * 0.1990)), y: geo.size.height * 0.4598)
                
                Text("Applies")
                    .foregroundColor(ColorPalette.dayFont)
                    .font(.footnote)
                    .position(x: (geo.size.width - (geo.size.width * 0.1990)), y: geo.size.height * 0.8771)
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewLayout(.sizeThatFits)
            .frame(width: 468, height: 127, alignment: .center)
    }
}


struct TabBarBottomShape : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let lineLength = rect.width * 0.4199
            let curveLength = rect.width * 0.1602
            let control = CGPoint(x: rect.width / 2, y: rect.height * 0.4)
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: lineLength, y: 0))
            
            path.addQuadCurve(to: CGPoint(x: lineLength + curveLength, y: 0), control: control)
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            path.closeSubpath()
        }
    }
}

struct TabBarBottomLines : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let halfWidth = rect.width / 2
            var nextX = halfWidth * 0.2226
            let emptySpaceLength = halfWidth * 0.3485
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: nextX, y: 0))
            nextX += emptySpaceLength
            path.move(to: CGPoint(x: nextX, y: 0))
            nextX += halfWidth * 0.2687
            path.addLine(to: CGPoint(x: nextX, y: 0))
            let control = CGPoint(x: halfWidth * 0.93, y: rect.height * 0.2)
            path.addQuadCurve(to: CGPoint(x: halfWidth , y: rect.height * 0.2), control: control)
            
            var transform = CGAffineTransform(scaleX: -1, y: 1)
            transform = transform.translatedBy(x: -rect.width, y: 0)
            path.addPath(path, transform: transform)
            
        }
    }
}
