//
//  HomeSkeletonView.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 22.03.2026.
//

import SwiftUI

struct HomeSkeletonView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 24) {
      
      // Trending skeleton
      VStack(alignment: .leading, spacing: 8) {
        RoundedRectangle(cornerRadius: 6)
          .fill(Color.gray.opacity(0.3))
          .frame(width: 160, height: 20)
          .shimmer(cornerRadius: 6)
          .padding(.horizontal, 16)
        
        ScrollView(.horizontal, showsIndicators: false) {
          LazyHStack(spacing: 16) {
            ForEach(0..<5, id: \.self) { _ in
              VStack(alignment: .leading, spacing: 8) {
                RoundedRectangle(cornerRadius: 12)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 280, height: 160)
                  .shimmer(cornerRadius: 12)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 180, height: 14)
                  .shimmer(cornerRadius: 4)
              }
            }
          }
          .padding(.horizontal, 16)
        }
      }
      
      // Popular Movies skeleton
      VStack(alignment: .leading, spacing: 8) {
        RoundedRectangle(cornerRadius: 6)
          .fill(Color.gray.opacity(0.3))
          .frame(width: 140, height: 20)
          .shimmer(cornerRadius: 6)
          .padding(.horizontal, 16)
        
        ScrollView(.horizontal, showsIndicators: false) {
          LazyHStack(spacing: 16) {
            ForEach(0..<6, id: \.self) { _ in
              VStack(alignment: .leading, spacing: 6) {
                RoundedRectangle(cornerRadius: 12)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 130, height: 190)
                  .shimmer(cornerRadius: 12)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 100, height: 12)
                  .shimmer(cornerRadius: 4)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 70, height: 10)
                  .shimmer(cornerRadius: 4)
              }
            }
          }
          .padding(.horizontal, 16)
        }
      }
      
      // Popular TV Shows skeleton
      VStack(alignment: .leading, spacing: 8) {
        RoundedRectangle(cornerRadius: 6)
          .fill(Color.gray.opacity(0.3))
          .frame(width: 160, height: 20)
          .shimmer(cornerRadius: 6)
          .padding(.horizontal, 16)
        
        ScrollView(.horizontal, showsIndicators: false) {
          LazyHStack(spacing: 16) {
            ForEach(0..<6, id: \.self) { _ in
              VStack(alignment: .leading, spacing: 6) {
                RoundedRectangle(cornerRadius: 12)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 130, height: 190)
                  .shimmer(cornerRadius: 12)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 100, height: 12)
                  .shimmer(cornerRadius: 4)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 70, height: 10)
                  .shimmer(cornerRadius: 4)
              }
            }
          }
          .padding(.horizontal, 16)
        }
      }
      // Coming Soon skeleton
      VStack(alignment: .leading, spacing: 12) {
        RoundedRectangle(cornerRadius: 6)
          .fill(Color.gray.opacity(0.3))
          .frame(width: 140, height: 20)
          .shimmer(cornerRadius: 6)
          .padding(.horizontal, 16)
        
        VStack(spacing: 12) {
          ForEach(0..<3, id: \.self) { _ in
            HStack(alignment: .top, spacing: 12) {
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.3))
                .frame(width: 90, height: 130)
                .shimmer(cornerRadius: 10)
              
              VStack(alignment: .leading, spacing: 8) {
                RoundedRectangle(cornerRadius: 6)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 90, height: 16)
                  .shimmer(cornerRadius: 6)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 160, height: 18)
                  .shimmer(cornerRadius: 4)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 200, height: 12)
                  .shimmer(cornerRadius: 4)
                
                RoundedRectangle(cornerRadius: 4)
                  .fill(Color.gray.opacity(0.3))
                  .frame(width: 160, height: 12)
                  .shimmer(cornerRadius: 4)
              }
              Spacer()
            }
            .padding(12)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            .padding(.horizontal, 16)
          }
        }
      }
    }
  }
}

#Preview {
  HomeSkeletonView()
    .background(Color.black)
}
