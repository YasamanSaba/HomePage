//
//  ProgressSteps.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/1/20.
//

import SwiftUI

struct ProcessingStep: View {
    var body: some View {
        GeometryReader { geometry in
                ZStack {
                    Circle()
                        .inset(by: 1.5)
                        .stroke(lineWidth: 3)
                        .foregroundColor(ColorPalette.circleBackground)
                    
                    Circle()
                        .inset(by: 1.5)
                        .trim(from: 0.0, to: 0.2)
                        .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                        .rotationEffect(Angle(degrees: 270.0))
                        .foregroundColor(ColorPalette.greenColor)
                    
                    Text("34")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(ColorPalette.whiteColor)
                        .padding(2)
                    
                    
                    Image("ProcessingIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width * 0.41)
                        .offset(x: geometry.size.width * 0.522, y: -geometry.size.width * 0.522)
                }
                
        }
    }
}

struct ProgressSteps_Previews: PreviewProvider {
    static var previews: some View {
        ProcessingStep()
            .previewLayout(.sizeThatFits)
            .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        
    }
}
