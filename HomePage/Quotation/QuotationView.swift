//
//  QuotationView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/2/20.
//

import SwiftUI

struct QuotationView: View {
    var body: some View {
        GeometryReader { geomtry in
            ZStack {
                Rectangle()
                    .foregroundColor(ColorPalette.dayBackground)
                
                LineShape()
                    .stroke(lineWidth: 3)
                
                Image("Quotation")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geomtry.size.width * 0.099, height: geomtry.size.height * 0.106)
                    .position(x: geomtry.size.width * 0.141, y: geomtry.size.height * 0.169)
                
                Text("\"If people are doubting how far you can go, go so far that you can’t hear them anymore.\"")
                    .font(.custom("Gilroy-Medium", size: 20))
                    .lineLimit(4)
                    .foregroundColor(ColorPalette.blueColor)
                    .frame(width: geomtry.size.width * 0.74, height: geomtry.size.height * 0.387)
                    .position(x: geomtry.size.width / 2, y: geomtry.size.height / 2)
                
                HStack {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(ColorPalette.mainBackground)
                        Image("MicheleRuiz")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .mask(Circle())
                    }
                    .frame(width: geomtry.size.width * 0.129, height: geomtry.size.height * 0.189)
                    
                    Text("MICHELLE RUIZ")
                        .font(.custom("gilroy-light", size: 16))
                        .foregroundColor(ColorPalette.mainBackground)
                }
                .position(x: geomtry.size.width * 0.695, y: geomtry.size.height * 0.797)
                    
            }
        }
    }
}

struct LineShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: rect.height * 0.036))
            path.addLine(to: .init(x: rect.width * 0.131, y: rect.height * 0.036))
            path.addQuadCurve(to: CGPoint(x: rect.width * 0.2,
                                          y: rect.height * 0.036),
                              control: CGPoint(x: rect.width * 0.165, y: rect.height * 0.073))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height * 0.036))
            
            var transform = CGAffineTransform(scaleX: 1, y: -1)
            transform = transform.translatedBy(x: 0, y: -rect.height)
            
            path.addPath(path, transform: transform)
        }
    }
}

struct QuotationView_Previews: PreviewProvider {
    static var previews: some View {
        QuotationView()
            .previewLayout(.sizeThatFits)
            .frame(width: 300, height: 200)
    }
}
