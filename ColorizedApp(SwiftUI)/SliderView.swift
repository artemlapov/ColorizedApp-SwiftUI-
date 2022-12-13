//
//  SliderView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Artem Lapov on 13.12.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @State var text: String = "  -"
    var color: Color

    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            TextField(text, text: $text)
                .frame(width: 35)
                .overlay(RoundedRectangle(cornerRadius: 4)
                .stroke(lineWidth: 1)
                .foregroundColor(.gray))
        }
    }
}

//struct SliderView_Previews: PreviewProvider {
//    @Binding var previewSliderValue: Double = 100.0
//
//    static var previews: some View {
//        SliderView(value: $previewSliderValue, color: .cyan)
//    }
//}
