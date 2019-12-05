//
//  PlayerItem.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-12-02.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct PlayerItem: View {
    var player : Player
    var background = Color.white
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                VStack(alignment: .leading) {
                    Text(player.name)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text(player.position)
                        .foregroundColor(.black)
                }
                //.frame(width: 150, alignment: .leading)
                .padding(10)
                
                //Spacer()
                
                Image(player.team)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 5)
            }
            
            player.image
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .frame(width: 90, height: 90)
                .padding(10)
        }
        .background(background)
        .cornerRadius(10)
    }
}

struct PlayerItem_Previews: PreviewProvider {
    static var previews: some View {
        PlayerItem(player: playersData[1]).previewLayout(.sizeThatFits)
    }
}
