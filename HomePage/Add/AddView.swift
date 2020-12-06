//
//  AddView.swift
//  HomePage
//
//  Created by Sam Javadizadeh on 12/6/20.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.summaryBackground)
                    VStack (alignment: .leading) {
                        Text("Add New")
                            .foregroundColor(ColorPalette.blueColor)
                        HStack {
                            VStack {
                                Image("AddApply")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Apply")
                                    .foregroundColor(ColorPalette.whiteColor)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                            VStack {
                                Image("AddInterview")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Interview")
                                    .foregroundColor(ColorPalette.dayFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                            VStack {
                                Image("AddTask")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Task")
                                    .foregroundColor(ColorPalette.dayFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                            VStack {
                                Image("AddResume")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Resume")
                                    .foregroundColor(ColorPalette.dayFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                        }
                    }
                    .padding()
                }
                .frame(height: geo.size.height * 0.662)
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.summaryBackground)
                    Text("Cancel")
                        .foregroundColor(ColorPalette.blueColor)
                        .fontWeight(.bold)
                }
                .frame(height: geo.size.height * 0.289)
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .previewLayout(.sizeThatFits)
            .frame(height: 250)
            .padding()
    }
}
