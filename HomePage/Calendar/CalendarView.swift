//
/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct CalendarView: View {
    
    var style = StrokeStyle(lineCap: .round)
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("CalendarBackground")
                    .resizable()
                HStack {
                    VStack(alignment: .leading) {
                        Text("NOVEMBER")
                            .foregroundColor(Color("CalendarMonthName"))
                            .font(Font.custom("Gilroy-Bold", size: 13))
                            .lineLimit(1)
                        
                        
                        Text("2020")
                            .foregroundColor(Color("CalendarDayFont"))
                            .font(Font.custom("Gilroy-SemiBold", size: 12))
                        Spacer()
                    }
                    .padding(.top, geo.size.height * 0.186)
                    .padding(.leading, 5)
                    Spacer()
                    HStack(spacing: geo.size.width * 0.5 * 0.01) {
                        ForEach(0..<7) { i in
                            DayView(dayName: "FRI", dayNum: 8 + i , isCurrentDay: i == 0, hasInterview: true, hasTask: true)
                        }
                    }
                    .padding(.top, geo.size.height * 0.1)
                    .padding(.bottom, geo.size.height * 0.1)
                    .padding(.trailing, 5)
                    .frame(width: geo.size.width * 0.75, height: geo.size.height * 0.95)
                    
                }
            }
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .frame(width: 400, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
