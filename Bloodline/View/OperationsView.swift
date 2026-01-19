//
//  OperationsView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct OperationsView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image(systemName: "building.2.crop.circle")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("New York")
                        .foregroundStyle(Color(uiColor: .label))
                }
                Divider()
                HStack() {
                    Image(systemName: "leaf.circle")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Sicily")
                        .foregroundStyle(Color(uiColor: .label))
                }
                Divider()
                HStack() {
                    Image(systemName: "tram.fill")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                        .foregroundStyle(Color(uiColor: .label))
                }
                Divider()
                HStack() {
                    Image(systemName: "house.fill")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Chicago")
                        .foregroundStyle(Color(uiColor: .label))
                }
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Text("⚔️")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Gambling")
                        .foregroundStyle(Color(uiColor: .label))
                    Spacer()
                    Image(systemName: "die.face.5.fill")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Smuggling")
                        .foregroundStyle(Color(uiColor: .label))
                    Spacer()
                    Image(systemName: "shippingbox.fill")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Protection")
                        .foregroundStyle(Color(uiColor: .label))
                    Spacer()
                    Image(systemName: "shield.fill")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Night Clubs")
                        .foregroundStyle(Color(uiColor: .label))
                    Spacer()
                    Image(systemName: "music.note.house.fill")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color("ColorRedLight"))
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct MafiaOperationsView_Previews: PreviewProvider {
    static var previews: some View {
        OperationsView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
