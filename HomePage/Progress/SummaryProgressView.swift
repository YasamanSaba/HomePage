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
                HStack(alignment: .myAlignment, spacing: 2) {

                    VStack {
                        ProcessingStep()
                            .frame(width: geomtry.size.height * 0.5, height: geomtry.size.height * 0.5)
                            .alignmentGuide(.myAlignment) { d in d[VerticalAlignment.center]}
                        
                        Text("In Progress")
                            .font(.custom("gilroy-light", size: 11))
                            .foregroundColor(ColorPalette.calendarDayFont)
                    }
                    
                    
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geomtry.size.width * 0.16, height: 3)
                        .alignmentGuide(.myAlignment) { d in d[VerticalAlignment.center]}
                    
                    TotalStep()
                        .frame(width: geomtry.size.height * 0.6, height: geomtry.size.height * 0.6)
                        .alignmentGuide(.myAlignment) { d in d[VerticalAlignment.center]}
                        
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.blueColor)
                        .frame(width: geomtry.size.width * 0.16, height: 3)
                        .alignmentGuide(.myAlignment) { d in d[VerticalAlignment.center]}
                
                    
                    
                    VStack {
                        RejectStep()
                            .frame(width: geomtry.size.height * 0.5, height: geomtry.size.height * 0.5)
                            .alignmentGuide(.myAlignment) { d in d[VerticalAlignment.center]}
                        Text("Rejected")
                            .font(.custom("gilroy-light", size: 11))
                            .foregroundColor(ColorPalette.calendarDayFont)
                            //.position(x: geomtry.size.width - geomtry.size.width * 0.172, y: geomtry.size.height * 0.833)
                    }
                        
                    
                }
                
            }
            
            
        }
        
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryProgressView()
            .previewLayout(.sizeThatFits)
            .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}


extension VerticalAlignment {
    private enum MyAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[VerticalAlignment.center]
        }
    }
    
    static let myAlignment = VerticalAlignment(MyAlignment.self)
}
