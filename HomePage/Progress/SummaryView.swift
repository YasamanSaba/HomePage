//
//  SummaryView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/5/20.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 9)
                    .foregroundColor(ColorPalette.summaryBackground)
                
                HStack(spacing: 2) {
                    VStack {
                        InProgress()
                            .frame(width: geometry.size.width * 0.133, height: geometry.size.width * 0.133)
                        Text("In Progress")
                            .font(.custom("gilroy-light", size: 11))
                            .foregroundColor(ColorPalette.calendarDayFont)
                    }
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geometry.size.width * 0.158, height: geometry.size.height * 0.032)
                    
                    
                    Total()
                        .frame(width: geometry.size.width * 0.175, height: geometry.size.width * 0.175)
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geometry.size.width * 0.158, height: geometry.size.height * 0.032)
                    VStack {
                        Reject()
                            .frame(width: geometry.size.width * 0.133, height: geometry.size.width * 0.133)
                        Text("Rejected")
                            .font(.custom("gilroy-light", size: 11))
                            .foregroundColor(ColorPalette.calendarDayFont)
                    }
                }
                
            }
        }
        
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SummaryView()
                .previewLayout(.sizeThatFits)
                .frame(width: 199.8, height: 55.74, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            InProgress()
                .previewLayout(.sizeThatFits)
                .frame(width: 111.35, height: 139.35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}


struct InProgress: View {
    var body: some View {
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
        }
    }
}

struct Total: View {
    var body: some View {
        ZStack {
            Circle()
                .inset(by: 1.5)
                .stroke(lineWidth: 3)
                .foregroundColor(ColorPalette.blueColor)
            
            
            
            
            Text("250")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(ColorPalette.whiteColor)
        }
    }
}

struct Reject: View {
    var body: some View {
        ZStack {
            Circle()
                .inset(by: 1.5)
                .stroke(lineWidth: 3)
                .foregroundColor(ColorPalette.circleBackground)
            
            
            Circle()
                .inset(by: 1.5)
                .trim(from: 0.0, to: 0.9)
                .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270.0))
                .foregroundColor(ColorPalette.redColor)
            
            
            Text("216")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(ColorPalette.whiteColor)
        }
    }
}
