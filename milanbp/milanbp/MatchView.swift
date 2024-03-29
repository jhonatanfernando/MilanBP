//
//  MatchView.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-11-17.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct MatchView: View {
    var match: Match;
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("gradient1"), Color("gradient2")]), startPoint: .top, endPoint: .bottom))
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text(self.match.title)
                            .foregroundColor(Color("primary"))
                            .font(.title)
                            .fontWeight(.heavy)
                            .lineLimit(nil)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: 70)
                        
                        
                        Text(self.match.date)
                            .foregroundColor(Color("secondary"))
                            .padding(.top, 0)
                    }
                    //.frame(width: 180)
                    
                    HStack{
                        Image(self.match.imagePro)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 200)
                        .padding()
                        
                        Text(String(self.match.goalsPro))
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(10)
                        
                        Spacer()
                        
                        Text(String(self.match.goalsCons))
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(10)
                        
                        Image(self.match.imageCon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 200)
                        .padding()
                    }
                    
                    
                    Spacer()
                }
                .padding(.top, 40)
                .padding(.leading, 10)
                
               /* ZStack(alignment: .topTrailing) {
                    HStack {
                        //Image(systemName: "play.fill")
                        //    .font(.largeTitle)
                    }
                   // .frame(width: 100, height: 80)
                   //     .background(Color("accent"))
                   //     .cornerRadius(30)
                    //    .shadow(color: Color("accentShadow"), radius: 10, x: 0, y: 10)
                    Spacer()
                }
                .padding(.top, 20)
                .padding(.all, 20)*/
                
                ScrollView {
                    MatchBottom(text: self.match.comments)
                        .background(Color.white)
                        .cornerRadius(30)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .padding(.top, 400)
                }
                .frame(width: geometry.size.width)
            }
        }
    }
}

#if DEBUG
struct CourseView_Previews : PreviewProvider {
    static var previews: some View {
        MatchView(match : matchesData[1])
    }
}
#endif
