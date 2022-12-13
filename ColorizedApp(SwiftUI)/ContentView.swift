//
//  ContentView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Artem Lapov on 13.12.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var redSliderValue = 100.0
    @State private var greenSliderValue = 100.0
    @State private var blueSliderValue = 100.0

    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea()

            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 200)
                    .foregroundColor(
                        Color(
                            red: redSliderValue/255,
                            green: greenSliderValue/255,
                            blue: blueSliderValue/255
                        )
                    )
                    .shadow(radius: 10)
                    .padding()
                SliderView(value: $redSliderValue, color: .red)
                    .padding()
                SliderView(value: $greenSliderValue, color: .green)
                    .padding()
                SliderView(value: $blueSliderValue, color: .blue)
                    .padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
