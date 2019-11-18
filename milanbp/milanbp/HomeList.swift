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
                            Button(action: {self.showCourseView.toggle()}) {
                                CardView(course: course)
                                    .rotation3DEffect(Angle(degrees: Double(
                                        (geometry.frame(in: .global).minX - 30) / -30
                                    )), axis: (x: 0, y: 10, z: 0))
                                    .sheet(isPresented: self.$showCourseView) {
                                        MatchView(title: course.title, image: course.image)
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
    var course = Match(id:1, title: "", image: "Illustration1",goalsPro: 0, goalsCons: 0, date:"01/01/2000")
    
    var body: some View {
        return VStack(alignment: .leading) {
            VStack{
                Text(course.title)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineSpacing(6)
                    .lineLimit(4)
                    .padding(.horizontal, 15)
                
                Text(course.date)
                .foregroundColor(.white)
                .font(.subheadline)
                .lineSpacing(6)
                .lineLimit(4)
                .padding(.horizontal, 10)
            }.frame(width: 260)
            
            Spacer()
            
            HStack{
            VStack{
                Text(String(course.goalsPro))
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
                .lineSpacing(6)
                .lineLimit(4)
                .padding(20)
                 Spacer()
            }.background(Color.black)
            .cornerRadius(30)
            .frame(width: 60, height: 60)
            .padding(20)
                 Spacer()
                VStack{
                    Text(String(course.goalsCons))
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineSpacing(6)
                    .lineLimit(4)
                    .padding(20)
                     Spacer()
                }.background(Color.black)
                .cornerRadius(30)
                .frame(width: 60, height: 60)
                .padding(20)
            }
            

        }
        .background(Color.green)
            .cornerRadius(30)
            .frame(width: 260, height: 100)
        .shadow(color: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5), radius: 20, x: 0, y: 20)
    }
}
