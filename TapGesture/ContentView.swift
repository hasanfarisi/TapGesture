//
//  ContentView.swift
//  TapGesture
//
//  Created by mac on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Feed().padding()
                Spacer()
            }.navigationBarTitle("Instagram")
        }
    }
}

#Preview {
    ContentView()
}

struct Feed:View {
    @State private var isTapped = false
    var body: some View {
        VStack {
            HStack{
                Circle().frame(width: 25, height: 25)
                Text("Risyad")
                Spacer()
                Image(systemName: "circle.grid.2x2")
            }
            .padding()
            Image("potret2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400)
                .clipped()
            
            HStack{
                if !self.isTapped {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .onTapGesture {
                            if !self.isTapped {
                                self.isTapped = true
                                print(self.isTapped)
                            }else{
                                self.isTapped = false
                                print(self.isTapped)
                            }
                        }
                }else{
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .onTapGesture {
                            if !self.isTapped {
                                self.isTapped = true
                                print(self.isTapped)
                            }else{
                                self.isTapped = false
                                print(self.isTapped)
                            }
                        }
                        .foregroundColor(Color.red)
                }
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 25, height: 25)
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: 25, height: 25)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .padding()
        }
        .border(Color.gray)
    }
}
