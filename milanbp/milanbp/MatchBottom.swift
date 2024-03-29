//
//  MatchBottom.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-11-17.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct MatchBottom : View {
    var text : String
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3.0)
                .opacity(0.1)
                .padding(.top, 16)
            VStack {
                Text(text)
                    .lineLimit(100)
                    .padding(20)
                    .frame(minWidth: 0, maxWidth: .infinity)
                Spacer()
            }
        }
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(30)
        .shadow(color: Color("buttonShadow"), radius: 20, x: 0, y: 0)
    }
}

#if DEBUG
struct CardBottom_Previews : PreviewProvider {
    static var previews: some View {
        MatchBottom(text: "Jogo realizao... ")
    }
}
#endif
