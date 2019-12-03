//
//  Player.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-11-17.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct Player: Decodable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var number: Int
    var position: String
}

extension Player {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
