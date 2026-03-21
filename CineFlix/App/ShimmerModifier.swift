//
//  ShimmerModifier.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 22.03.2026.
//

import SwiftUI

struct ShimmerModifier: ViewModifier {
  var cornerRadius: CGFloat
  @State private var phase: CGFloat = -1.5
  
  func body(content: Content) -> some View {
    content
      .overlay(
        GeometryReader { geo in
          LinearGradient(
            colors: [
              Color.white.opacity(0),
              Color.white.opacity(0.18),
              Color.white.opacity(0)
            ],
            startPoint: .leading,
            endPoint: .trailing
          )
          .frame(width: geo.size.width * 2)
          .offset(x: phase * geo.size.width)
        }
          .clipped()
      )
      .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
      .onAppear {
        withAnimation(.linear(duration: 1.4).repeatForever(autoreverses: false)) {
          phase = 1.5
        }
      }
  }
}

extension View {
  func shimmer(cornerRadius: CGFloat = 12) -> some View {
    modifier(ShimmerModifier(cornerRadius: cornerRadius))
  }
}
