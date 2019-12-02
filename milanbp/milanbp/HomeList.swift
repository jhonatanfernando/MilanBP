//
//  HomeList.swift
//  milanbp
//
//  Created by Jhonatan Fernando on 2019-11-17.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct HomeList : View {
 
    var matches = matchesData
 
    @State var showCourseView = false
    @State var match : Match = nil
    
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    Text("Matches").font(.largeTitle).fontWeight(.heavy)
                    Text("21 matches").foregroundColor(.gray)
                }
                Spacer()
                }
                .padding(.top, 78)
                .padding(.leading, 60)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(matches) { course in
                         GeometryReader { geometry in
                            Button(action: {self.showCourseView.toggle();self.match = course}) {
                                
                                CardView(course: course)
                                    .rotation3DEffect(Angle(degrees: Double(
                                        (geometry.frame(in: .global).minX - 30) / -30
                                    )), axis: (x: 0, y: 10, z: 0))
                                    .sheet(isPresented: self.$showCourseView) {
                                        MatchView(match: self.match!)
                                    }
                            }
                        }
                        .frame(width: 246, height: 360)
                    }
                }.padding(30)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: 480)
            
            //CertificateRow()
            
            //CourseRow()
            
            Spacer()
        }
    }
}

#if DEBUG
struct HomeBack_Previews : PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}
#endif



struct CardView : View {
    var course: Match;
    
    var body: some View {
        return VStack(alignment: .leading) {
            Text(course.date)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
                .lineSpacing(6)
                .lineLimit(4)
                .padding(30)
            Spacer()
            
            HStack{
                
                VStack{
                    Image(course.imagePro)
                          .renderingMode(.original)
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 120, height: 150)
        
                    Text(String(course.goalsPro))
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(10)
                }
                VStack{

                   Image(course.imageCon)
                       .renderingMode(.original)
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 120, height: 150)
                    
                    Text(String(course.goalsCons))
                       .foregroundColor(.white)
                       .font(.largeTitle)
                       .fontWeight(.bold)
                       .padding(10)
                }
            }.padding(.bottom, 0)
           
        }
        .background(Color(hue: 0.677, saturation: 0.701, brightness: 0.788))
            .cornerRadius(30)
            .frame(width: 246, height: 300)
        .shadow(color: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5), radius: 20, x: 0, y: 20)
    }
}
