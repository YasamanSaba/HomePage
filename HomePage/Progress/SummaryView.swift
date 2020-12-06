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
                
                ZStack{
                    Image("ProcessingIcon")
                        .resizable()
                        .frame(width: geometry.size.width * 0.053, height: geometry.size.width * 0.053)
                        .position(x: geometry.size.width * 0.248, y: geometry.size.height * 0.207)
                    InProgress()
                        .frame(width: geometry.size.width * 0.133, height: geometry.size.height * 0.48)
                        .position(x: geometry.size.width * 0.172, y: geometry.size.height * 0.455)
                }
                
                Text("In Progress")
                    .font(.custom("gilroy-light", size: 11))
                    .foregroundColor(ColorPalette.calendarDayFont)
                    .position(x: geometry.size.width * 0.174, y: geometry.size.height * 0.8361)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(ColorPalette.blueColor)
                    .frame(width: geometry.size.width * 0.158, height: geometry.size.height * 0.0312)
                    .position(x: geometry.size.width * 0.3267, y: geometry.size.height * 0.4552)
                ZStack {
                    Total()
                        .frame(width: geometry.size.width * 0.175, height: geometry.size.height * 0.631)
                        .position(x: geometry.size.width / 2, y: geometry.size.height * 0.456)
                    
                    Text("250")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(ColorPalette.blueColor)
                        .position(x: geometry.size.width * 0.5007, y: geometry.size.height * 0.3269)
                    
                    
                    Image("AppliesforTotal")
                        .resizable()
                        .frame(width: geometry.size.width * 0.0877, height: geometry.size.height * 0.2191)
                        .position(x: geometry.size.width * 0.5097, y: geometry.size.height * 0.5246)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geometry.size.width * 0.158, height: geometry.size.height * 0.0312)
                        .position(x: geometry.size.width * 0.6753, y: geometry.size.height * 0.4552)
                    
                }
                Reject()
                    .frame(width: geometry.size.width * 0.133, height: geometry.size.height * 0.48)
                    .position(x: geometry.size.width * 0.828, y: geometry.size.height * 0.455)
                
                
                Image("CrossIcon")
                    .resizable()
                    .frame(width: geometry.size.width * 0.0407, height: geometry.size.width * 0.0407)
                    .position(x: geometry.size.width * 0.905, y: geometry.size.height * 0.207)
                
                Text("Rejected")
                    .font(.custom("gilroy-light", size: 11))
                    .foregroundColor(ColorPalette.calendarDayFont)
                    .position(x: geometry.size.width * 0.828, y: geometry.size.height * 0.8361)
            }
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SummaryView()
                .previewLayout(.sizeThatFits)
                .frame(width: 300, height: 83.49)
            InProgress()
                .previewLayout(.sizeThatFits)
                .frame(width: 66.85, height: 66.85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Total()
                .previewLayout(.sizeThatFits)
                .frame(width: 87.85, height: 87.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Reject()
                .previewLayout(.sizeThatFits)
                .frame(width: 66.85, height: 66.85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
    }
}


struct InProgress: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 3)
                .foregroundColor(ColorPalette.circleBackground)
            
            Circle()
                .trim(from: 0.0, to: 0.2)
                .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270.0))
                .foregroundColor(ColorPalette.greenColor)
            
            
            Text("34")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(ColorPalette.whiteColor)
        }
    }
}

struct Total: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundColor(ColorPalette.blueColor)
            }
        }
    }
}

struct Reject: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 3)
                .foregroundColor(ColorPalette.circleBackground)
            
            
            Circle()
                .trim(from: 0.0, to: 0.9)
                .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270.0))
                .foregroundColor(ColorPalette.redColor)
            
            
            Text("216")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(ColorPalette.whiteColor)
        }
    }
}
