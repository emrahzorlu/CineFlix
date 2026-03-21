//
//  AppTabView.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import SwiftUI

struct AppTabView: View {
  @State private var selectedTab = 0
  
  var body: some View {
    TabView(selection: $selectedTab) {
      HomeView().tabItem {
        Label("Home", systemImage: "house.fill")
      }.tag(0)
      
      Text("Search").tabItem {
        Label("Search", systemImage: "magnifyingglass")
      }.tag(1)
      
      Text("WatchList").tabItem {
        Label("WatchList", systemImage: "books.vertical.fill")
      }.tag(2)
      
      Text("Profile").tabItem {
        Label("Profile", systemImage: "person.fill")
      }.tag(3)
    }.tint(.red)
  }
}

#Preview {
  AppTabView()
}
