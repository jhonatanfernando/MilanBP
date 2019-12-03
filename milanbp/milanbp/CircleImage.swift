//
//  CircleImage.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-12-02.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: playersData[0].image)
    }
}
