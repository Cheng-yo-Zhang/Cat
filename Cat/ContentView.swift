//
//  ContentView.swift
//  Cat
//
//  Created by Louis Chang on 2024/12/26.
//

import SwiftUI

struct DeathlySanctuary: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 畫三角形（隱形斗篷）
        path.move(to: CGPoint(x: rect.width * 0.1, y: rect.height * 0.9))
        path.addLine(to: CGPoint(x: rect.width * 0.9, y: rect.height * 0.9))
        path.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.1))
        path.closeSubpath()
        
        // 畫圓圈（復活石）- 調整大小使其內切三角形
        path.addEllipse(in: CGRect(x: rect.width * 0.25,
                                  y: rect.height * 0.4,
                                  width: rect.width * 0.5,
                                  height: rect.width * 0.5))
        
        // 畫直線（老魔杖）
        path.move(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.1))
        path.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.9))
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            DeathlySanctuary()
                .stroke(Color.black, lineWidth: 8)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    ContentView()
}
