//
//  Match.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-11-17.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct Match: Decodable, Identifiable {
    var id : Int
    var title: String
    var imagePro: String
    var imageCon: String
    var goalsPro: Int
    var goalsCons: Int
    var date: String
    var comments: String
}
