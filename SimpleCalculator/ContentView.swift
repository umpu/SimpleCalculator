//
//  ContentView.swift
//  SimpleCalculator
//
//  Created by Andrei Gorbunov on 06.02.2024.
//

import SwiftUI

struct ContentView: View {
    var elementSize = UIScreen.main.bounds.width / 4
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 1) {
            Spacer()
            Text("0")
                .foregroundStyle(.white)
                .bold()
                .font(.system(size: elementSize))
            
            Group {
                HStack(spacing: 1) {
                    ButtonView(sign: "AC")
                    ButtonView(sign: "+-")
                    ButtonView(sign: "%")
                    ButtonView(sign: "/", foregroundColor: .orange)
                }
                HStack(spacing: 1) {
                    ButtonView(sign: "7")
                    ButtonView(sign: "8")
                    ButtonView(sign: "9")
                    ButtonView(sign: "*", foregroundColor: .orange)
                }
                HStack(spacing: 1) {
                    ButtonView(sign: "4")
                    ButtonView(sign: "5")
                    ButtonView(sign: "6")
                    ButtonView(sign: "-", foregroundColor: .orange)
                }
                HStack(spacing: 1) {
                    ButtonView(sign: "1")
                    ButtonView(sign: "2")
                    ButtonView(sign: "3")
                    ButtonView(sign: "+", foregroundColor: .orange)
                }
                HStack(spacing: 1) {
                    ButtonView(sign: "0")
                    HStack(spacing: 1) {
                        ButtonView(sign: ".")
                        ButtonView(sign: "=", foregroundColor: .orange)
                    }
                }
            }
            .frame(width: elementSize * 4, height: elementSize)
        }
        .ignoresSafeArea()
        .background(Color.black)
    }
}

struct ButtonView: View {
    var sign = ""
    var foregroundColor: Color = .gray
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(foregroundColor)
            Text(sign)
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
