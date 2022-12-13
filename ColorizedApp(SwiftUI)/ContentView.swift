//
//  ContentView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Artem Lapov on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var rectangleColor: Color = .red

    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea()

            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 200)
                    .foregroundColor(rectangleColor)
                    .shadow(radius: 10)
                    .padding()
                SliderView()
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
