//
//  SliderView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Artem Lapov on 13.12.2022.
//

import SwiftUI

struct SliderView: View {
    @State private var value = 100.0
    @State private var color: Color = .red
    @State private var text = ""

    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            TextField(text, text: $text)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
