//
//  LifeStagesView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct LifeStagesView: View {
    
    var lifeStages: [Life] = lifeData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(lifeStages) { item in
                        LifeView(life: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LifeStagesView(lifeStages: lifeData)
}
