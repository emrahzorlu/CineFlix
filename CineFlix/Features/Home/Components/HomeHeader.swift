//
//  HomeHeader.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 18.03.2026.
//

import SwiftUI

struct HomeHeader: View {
  var body: some View {
    HStack() {
      Text("CineFlix")
        .font(.largeTitle.bold().scaled(by: 1.3))
        .foregroundStyle(
          LinearGradient(
            colors: [.red, .orange], startPoint: .topLeading, endPoint: .bottomTrailing
          )
        )
      
      Spacer()
    
      ZStack {
        Circle()
          .fill(Color.gray.opacity(0.3))
        
        Image(systemName: "person.fill")
          .foregroundStyle(.white)
          .font(.caption)
      }
      .frame(width: 36, height: 36)
      .overlay(Circle().stroke(Color.gray.opacity(0.6), lineWidth: 1))
      .padding(.trailing, 4)
    }
    .background(Color.appBackground)
  }
}

#Preview {
  HomeHeader()
}
