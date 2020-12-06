//
//  AddView.swift
//  HomePage
//
//  Created by Sam Javadizadeh on 12/6/20.
//  W:2238 H:1228

import SwiftUI

struct AddView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.dayBackground)
                    VStack (alignment: .leading) {
                        Text("ADD NEW")
                            .font(.subheadline)
                            .foregroundColor(ColorPalette.blueColor)
                        HStack(spacing: geo.size.width * 0.0692) {
                            VStack {
                                Image("AddApply")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Apply")
                                    .font(.subheadline)
                                    .foregroundColor(ColorPalette.addNewFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                            VStack {
                                Image("AddInterview")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Interview")
                                    .font(.subheadline)
                                    .foregroundColor(ColorPalette.addNewFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                            VStack {
                                Image("AddTask")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Task")
                                    .font(.subheadline)
                                    .foregroundColor(ColorPalette.addNewFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                            VStack {
                                Image("AddResume")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Resume")
                                    .font(.subheadline)
                                    .foregroundColor(ColorPalette.addNewFont)
                                    .offset(x: -geo.size.width * 0.011)
                            }
                        }
                    }
                    .padding(geo.size.width * 0.0277)
                }
                .frame(height: geo.size.height * 0.6693)
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(ColorPalette.summaryBackground)
                    Text("Cancel")
                        .foregroundColor(ColorPalette.blueColor)
                        .font(.title3)
                        .fontWeight(.medium)
                }
                .frame(height: geo.size.height * 0.2899)
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .previewLayout(.sizeThatFits)
            .frame(width:446 ,height: 244)
            .padding()
    }
}
