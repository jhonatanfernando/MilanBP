//
//  PlayerRow.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-12-02.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    var players = playersData
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Players")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .padding(.leading, 50)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(players) { item in
                        
                        PlayerItem(player: item)
                           // .frame(width: 250.0, height: 150)
                            .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
                            .contextMenu {
                                VStack {
                                    Button(action: {}) {
                                        HStack {
                                            Text("Make First")
                                            Image(systemName: "star")
                                        }
                                    }
                                    Button(action: {}) {
                                        HStack {
                                            Text("Remove")
                                            Image(systemName: "trash")
                                        }
                                    }
                                }
                            }
                    }
                }
                .padding(.leading, 30)
                .padding(.top, 10)
                
                Spacer()
            }
            .frame(height: 200)
        }
    }
}


struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow()
    }
}
