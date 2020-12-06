//
//  ProgressView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/1/20.
//

import SwiftUI

struct SummaryProgressView: View {
    var body: some View {
        GeometryReader { geomtry in
            ZStack {
                
                RoundedRectangle(cornerRadius: 9)
                    .fill(ColorPalette.summaryBackground)
                HStack(spacing: 2) {
                    Spacer()
                    VStack {
                        ProcessingStep()
                            .frame(width: geomtry.size.height * 0.476, height: geomtry.size.height * 0.476)

                    }
                    
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geomtry.size.width * 0.157, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                   
                    
                    TotalStep()
                        .frame(width: geomtry.size.height * 0.7, height: geomtry.size.height * 0.7)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geomtry.size.width * 0.157, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack {
                        RejectStep()
                            .frame(width: geomtry.size.height * 0.476, height: geomtry.size.height * 0.476)
                        
                    }
                    Spacer()
                    
                }
                
                Text("In Progress")
                    .font(.custom("gilroy-light", size: 11))
                    .foregroundColor(ColorPalette.calendarDayFont)
                    .position(x: geomtry.size.width * 0.172, y: geomtry.size.height * 0.833)
                
                Text("Rejected")
                    .font(.custom("gilroy-light", size: 11))
                    .foregroundColor(ColorPalette.calendarDayFont)
                    .position(x: geomtry.size.width - geomtry.size.width * 0.172, y: geomtry.size.height * 0.833)
                
            }
            
            
        }
        
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryProgressView()
            .previewLayout(.sizeThatFits)
            .frame(width: 300, height: 81, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
