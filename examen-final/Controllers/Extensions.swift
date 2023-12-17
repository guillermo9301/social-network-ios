//
//  Extensions.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import Foundation
import SwiftUI

var storyStrokeGradient = Gradient (
    colors: [
        Color("storyStrokeColor2"),
        Color("storyStrokeColor1")
    ]
)

extension Text {
    func storyUserName() -> some View {
        self.font(.system(size: 12))
    }
    
    func newsFeedUserName() -> some View {
        self.font(.system(size: 14, weight: .bold))
    }
    
    func commentHelperText() -> some View {
        self.font(.system(size: 14, weight: .thin))
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
    }
    
    func descriptionText() -> some View {
        self.font(.system(size: 14, weight: .regular))
    }
}

extension Image {
       
    func headerImg() -> some View {
        self.resizable()
            .scaledToFit()
            .frame(width: 180)
    }
    
    func headerButton() -> some View {
        self.resizable()
            .scaledToFit()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 35, height: 35)
    }
    
    func smallIcon() -> some View {
        self.resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
    }
    
    func storyThumbnail() -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: 70, height: 70)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding(3)
            .overlay(
                Circle().stroke(LinearGradient(gradient: storyStrokeGradient, startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 3)
            )
    }
    
    func userPhotoDisplay() -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: 35, height: 35)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    
    func userPhotoMini() -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: 25, height: 25)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    
    func userPhotoFeed() -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity, maxHeight: 300)
            .clipped()
    }
}


