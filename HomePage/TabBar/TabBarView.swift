//
//  TabBarView.swift
//  HomePage
//
//  Created by Sam Javadizadeh on 12/3/20.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack(spacing: 0) {
                    Image("AddButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geo.size.width * 0.109)
                    
                TabBarBottomShape()
                    .fill(ColorPalette.dayBackground)
                    
                    .overlay(TabBarBottomLines()
                                .stroke(lineWidth: 2)
                                .foregroundColor(.blue))
                }
                
                Image("HomeTab")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width * 0.18)
                    .position(x: geo.size.width * 0.204, y: geo.size.width * 0.109)
                
                Text("Home")
                    .foregroundColor(ColorPalette.dayFont)
                    .font(.footnote)
                    .position(x: geo.size.width * 0.204, y: (geo.size.width * 0.109 + geo.size.width * 0.18 / 2))
                    .padding(.top, 10)
                
                Image("AppliesTab")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width * 0.18)
                    .position(x: (geo.size.width - geo.size.width * 0.204), y: geo.size.width * 0.109)
                
                Text("Applies")
                    .foregroundColor(ColorPalette.dayFont)
                    .font(.footnote)
                    .position(x: (geo.size.width - geo.size.width * 0.204), y: (geo.size.width * 0.109 + geo.size.width * 0.18 / 2))
                    .padding(.top, 10)
                    
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewLayout(.sizeThatFits)
            .frame(width: 400, height: 100, alignment: .center)
    }
}


struct TabBarBottomShape : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let lineLength = rect.width * 0.445
            let curveLength = rect.width * 0.11
            let control = CGPoint(x: rect.width / 2, y: rect.height * 0.208)
            
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
            var nextX = halfWidth * 0.216
            let emptySpaceLength = halfWidth * 0.385
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: nextX, y: 0))
            nextX += emptySpaceLength
            path.move(to: CGPoint(x: nextX, y: 0))
            nextX += halfWidth * 0.289
            path.addLine(to: CGPoint(x: nextX, y: 0))
            let control = CGPoint(x: nextX + halfWidth * 0.05, y: rect.height * 0.108)
            nextX += halfWidth * 0.108
            path.addQuadCurve(to: CGPoint(x: halfWidth , y: rect.height * 0.108), control: control)
            
            var transform = CGAffineTransform(scaleX: -1, y: 1)
            transform = transform.translatedBy(x: -rect.width, y: 0)
            path.addPath(path, transform: transform)
            
        }
    }
}
