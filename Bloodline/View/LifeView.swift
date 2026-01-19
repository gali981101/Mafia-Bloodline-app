//
//  LifeView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct LifeView: View {
    
    // MARK: PROPERTIES
    
    var life: Life
    
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image(life.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorRedLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                
                VStack(alignment: .center, spacing: 0) {
                    Text(life.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                }
                .foregroundColor(Color("ColorRedMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                Text(life.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorRedMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorRedLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                Spacer()
                Text(life.description)
                    .foregroundColor(Color(.white))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                Text(life.status.uppercased())
                    .foregroundColor(Color.white)
                    .font(.system(.footnote, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorRedMedium"), Color("ColorRedDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                Text(life.instruction)
                    .font(.footnote)
                    .foregroundColor(Color(.white))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 180)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorRedLight"), Color("ColorRedMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            slideInAnimation = true
        })
    }
}

#Preview {
    LifeView(life: lifeData[1])
}
