//
//  TotalStep.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/1/20.
//

import SwiftUI

struct TotalStep: View {
    var body: some View {
        GeometryReader { geomtry in
        ZStack {
            Circle()
                .inset(by: 1.5)
                .stroke(lineWidth: 3)
                .foregroundColor(ColorPalette.blueColor)
            
            VStack(spacing: 0) {
                    Spacer()
                    Text("250")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(ColorPalette.blueColor)
                        .padding(2)
                
                    Image("AppliesforTotal")
                        .resizable()
                        .frame(width: geomtry.size.width * 0.499 ,height: geomtry.size.height * 0.345)
                        .padding(2)
                        
                        Spacer()
                    
                }
            }
        }
    }
}

struct TotalStep_Previews: PreviewProvider {
    static var previews: some View {
        TotalStep()
            .previewLayout(.sizeThatFits)
            .frame(width: 500, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
