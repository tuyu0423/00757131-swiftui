//
//  ContentView.swift
//  00757131
//
//  Created by User11 on 2020/9/30.
//

import SwiftUI
struct Leaf: Shape {
func path(in rect: CGRect) -> Path {
Path { (path) in
path.move(to: CGPoint(x: rect.width, y: 0))
path.addQuadCurve(to: CGPoint(x: 0, y: rect.height),
control: CGPoint(x: rect.width / 5, y: rect.height / 5))
path.addQuadCurve(to: CGPoint(x: rect.width, y: 0),
control: CGPoint(x: rect.width * 17 / 20, y: rect.height * 13 /
15))
path.closeSubpath()
}
}
}

struct ContentView: View {
    var body: some View {
        ZStack{
            Text("嘿嘿～")
            //.font(.system(size: 20, weight: .heavy, design: .rounded))
            //.shadow(radius: 10)
            //.blendMode(.overlay)
            //.foregroundColor(Color(red: 102/255, green: 255/255, blue: 230/255, opacity: 1.0))
            //.offset(x:15, y: -275)
            //IPPROT().scaleEffect(0.3).offset(x:-90,y:-300)
            mushroom().scaleEffect(0.3).offset(x:-90,y:-255)
            mushroom().scaleEffect(0.3).offset(x:150,y:125)
            block().offset(x:0,y:372)
            block().offset(x:101,y:372)
            block().offset(x:202,y:372)
            question_box().offset(x:0,y:-10)
            Text("Mario Bros").font(.title).fontWeight(.heavy).foregroundColor(Color.pink).offset(x:0,y:280)
        }.background(Image("mario").resizable().scaledToFill().frame(minWidth:0,maxWidth: .infinity).edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
struct LeftBeard: Shape {
    func path(in rect: CGRect) -> Path {
        //normal
        Path { (path) in
            path.move(to: CGPoint(x: 120, y: 185))
            path.addQuadCurve(to: CGPoint(x: 80, y: 185), control:
                                CGPoint(x: 100, y: 165))
            path.addQuadCurve(to: CGPoint(x: 181, y: 220), control:
            CGPoint(x: 60, y: 250))
        }
        //big
        /*Path { (path) in
            path.move(to: CGPoint(x: 110, y: 165))
            path.addQuadCurve(to: CGPoint(x: 40, y: 165), control:
                                CGPoint(x: 70, y: 125))
            path.addQuadCurve(to: CGPoint(x: 115, y: 230), control:
                                CGPoint(x: 30, y: 250))
        }*/
    }
}
struct RightBeard: Shape {
    func path(in rect: CGRect) -> Path {
        //normal
        Path { (path) in
            path.move(to: CGPoint(x: 252, y: 185))
            path.addQuadCurve(to: CGPoint(x: 292, y: 185), control:
                                CGPoint(x: 272, y: 165))
            path.addQuadCurve(to: CGPoint(x: 181, y: 220), control:
            CGPoint(x: 312, y: 250))
        }
        //big
        /*Path { (path) in
            path.move(to: CGPoint(x: 252, y: 165))
            path.addQuadCurve(to: CGPoint(x: 322, y: 165), control:
                                CGPoint(x: 287, y: 125))
            path.addQuadCurve(to: CGPoint(x: 246, y: 230), control:
                                CGPoint(x: 332, y: 250))
        }*/
    }
}
struct IPPROT: View {
    var body: some View {
            ZStack {
                Group{
                    Group {//face
                        Group {
                            Path(ellipseIn: CGRect(x: 60, y: 50, width: 250,height: 250))
                                .fill(Color(red:1/255,green:159/255,blue:233/255))
                            Path(ellipseIn: CGRect(x: 60, y: 50, width: 250,height: 250))
                                .stroke(Color.black, lineWidth: 2)
                            Path(ellipseIn: CGRect(x: 76, y: 100, width: 220,height: 200))
                                .fill(Color.white)
                            Path(ellipseIn: CGRect(x: 76, y: 100, width: 220,height: 200))
                                .stroke(Color.black, lineWidth: 2)
                        }
                        Path { (path) in
                            path.move(to: CGPoint(x: 100, y: 168))
                            path.addLine(to: CGPoint(x: 160, y: 185))
                        }
                        .stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.move(to: CGPoint(x: 100, y: 195))
                            path.addLine(to: CGPoint(x: 160, y: 195))
                        }
                        .stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.move(to: CGPoint(x: 100, y: 225))
                            path.addLine(to: CGPoint(x: 160, y: 205))
                        }
                        .stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.move(to: CGPoint(x: 260, y: 168))
                            path.addLine(to: CGPoint(x: 200, y: 185))
                        }
                        .stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.move(to: CGPoint(x: 260, y: 195))
                            path.addLine(to: CGPoint(x: 200, y: 195))
                        }.stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.move(to: CGPoint(x: 260, y: 225))
                            path.addLine(to: CGPoint(x: 200, y: 205))
                        }.stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.move(to: CGPoint(x: 181, y: 168))
                            path.addLine(to: CGPoint(x: 181, y: 220))
                        }.stroke(Color.black, lineWidth: 2)
                        
                    }
                    Group{//eye
                        //Leftoutside
                        Path(ellipseIn: CGRect(x: 120, y: 80, width: 60,height: 80))
                            .fill(Color.white)
                        Path(ellipseIn: CGRect(x: 120, y: 80, width: 60,height: 80))
                            .stroke(Color.black, lineWidth: 2)
                        //Leftinside
                        Path(ellipseIn: CGRect(x: 150, y: 115, width: 20,height: 30))
                            .fill(Color.black)
                        Path(ellipseIn: CGRect(x: 155, y: 125, width: 10,height: 15))
                            .fill(Color.white)
                        //Rightoutside
                        Path(ellipseIn: CGRect(x: 182, y: 80, width: 60,height: 80))
                            .fill(Color.white)
                        Path(ellipseIn: CGRect(x: 182, y: 80, width: 60,height: 80))
                            .stroke(Color.black, lineWidth: 2)
                        //Rightinside
                        Path(ellipseIn: CGRect(x: 190, y: 115, width: 20,height: 30))
                            .fill(Color.black)
                        Path(ellipseIn: CGRect(x: 195, y: 125, width: 10,height: 15))
                            .fill(Color.white)
                    }
                    Group {//nose
                        Path(ellipseIn: CGRect(x: 169, y: 144, width: 25,height: 25))
                            .fill(Color.red)
                        Path(ellipseIn: CGRect(x: 169, y: 144, width: 25,height: 25))
                            .stroke(Color.black, lineWidth: 2)
                        Path(ellipseIn: CGRect(x: 172, y: 147, width: 13,height: 13))
                            .fill(Color.white)
                    }
                    Group {//mouth
                        LeftBeard().stroke(Color.black, lineWidth: 2)
                        RightBeard().stroke(Color.black, lineWidth: 2)
                        Mouth().fill(Color(red:226/255,green:0/255,blue:42/255))
                        //Mouth().fill(Color(red:94/255,green:38/255,blue:18/255))
                        Mouth().stroke(Color.black, lineWidth: 2)
                    }
                    Group {//body outside
                        Group{
                            BodyMedium().stroke(Color.black, lineWidth: 3)
                            BodyMedium().fill(Color(red:1/255,green:159/255,blue:233/255))
                            Rightfoot().fill(Color.white)
                            Rightfoot().stroke(Color.black, lineWidth: 2)
                            Leftfoot().fill(Color.white)
                            Leftfoot().stroke(Color.black, lineWidth: 2)
                        }
                        Righthand().fill(Color(red:1/255,green:159/255,blue:233/255))
                        Righthand().stroke(Color.black, lineWidth: 2)
                        //RighthandCicle
                        Path(ellipseIn: CGRect(x: 273, y: 343, width: 45,height: 45))
                        .fill(Color.white)
                        Path(ellipseIn: CGRect(x: 273, y: 343, width: 45,height: 45))
                        .stroke(Color.black, lineWidth: 2)
                        Lefthand().fill(Color(red:1/255,green:159/255,blue:233/255))
                        Lefthand().stroke(Color.black, lineWidth: 2)
                        //LefthandCicle
                        Path(ellipseIn: CGRect(x: 54, y: 343, width: 45,height: 45))
                        .fill(Color.white)
                        Path(ellipseIn: CGRect(x: 54, y: 343, width: 45,height: 45))
                        .stroke(Color.black, lineWidth: 2)
                    }
                    Group{//body inside
                        Path(ellipseIn: CGRect(x: 121, y: 300, width: 120,height: 120))
                        .fill(Color.white)
                        Path(ellipseIn: CGRect(x: 121, y: 300, width: 120,height: 120))
                        .stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                            path.addArc(center: CGPoint(x: 181, y: 360), radius: 45,
                            startAngle: .degrees(0), endAngle: .degrees(180), clockwise: false)
                            path.move(to: CGPoint(x: 136, y: 360))
                            path.addLine(to: CGPoint(x: 226, y: 360))
                        }.stroke(Color.black, lineWidth: 2)
                    }
                    Group {//chain
                        Chain().fill(Color(red:226/255,green:0/255,blue:42/255))
                        Chain().stroke(Color.black, lineWidth: 2)
                    }
                    Group {//belt
                        Path(ellipseIn: CGRect(x: 165, y: 290, width: 35,height: 35))
                        .fill(Color(red:238/255,green:238/255,blue:15/255))
                        Path(ellipseIn: CGRect(x: 165, y: 290, width: 35,height: 35))
                        .stroke(Color.black, lineWidth: 2)
                        Path { (path) in
                        path.move(to: CGPoint(x: 166, y: 305))
                        path.addLine(to: CGPoint(x: 201, y: 305))
                        }
                        .stroke(Color.black, lineWidth: 2.5)
                        Path(ellipseIn: CGRect(x: 175, y: 308, width: 15,height: 10))
                            .fill(Color.black)
                        Path { (path) in
                        path.move(to: CGPoint(x: 181, y: 310))
                        path.addLine(to: CGPoint(x: 181, y: 325))
                        }
                        .stroke(Color.black, lineWidth: 3)
                    }
                }.offset(x:0,y:230)
            }
        }
    }

struct Mouth: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
         path.addArc(center: CGPoint(x: 181, y: 230), radius: 50,startAngle: .degrees(360), endAngle: .degrees(180), clockwise: false)
            path.move(to: CGPoint(x: 115, y: 230))
            path.addQuadCurve(to: CGPoint(x: 181, y: 220), control:
                                CGPoint(x: 160, y: 227))
            path.addQuadCurve(to: CGPoint(x: 246, y: 230), control:
                                CGPoint(x: 202, y: 227))
         }
    }
}
struct BodyMedium: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x: 263, y: 295))
            path.addQuadCurve(to: CGPoint(x: 263, y: 450), control:
                                CGPoint(x: 280, y: 370))
            path.addQuadCurve(to: CGPoint(x: 196, y: 450), control:
                                CGPoint(x: 229, y: 460))
            path.addQuadCurve(to: CGPoint(x: 181, y: 440), control:
                                CGPoint(x: 189, y: 435))
            path.addQuadCurve(to: CGPoint(x: 166, y: 450), control:
                                CGPoint(x: 178, y: 440))
            path.addQuadCurve(to: CGPoint(x: 110, y: 450), control:
                                CGPoint(x: 133, y: 460))
            path.addQuadCurve(to: CGPoint(x: 110, y: 295), control:
                                CGPoint(x: 93, y: 373))
        }
    }
}
struct Rightfoot: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in//
            path.move(to: CGPoint(x: 196, y: 450))
            path.addQuadCurve(to: CGPoint(x: 263, y: 450), control:
                                CGPoint(x: 229, y: 460))
            path.addQuadCurve(to: CGPoint(x: 263, y: 477), control:
                                CGPoint(x: 290, y: 460))
            path.addQuadCurve(to: CGPoint(x: 190, y: 477), control:
                                CGPoint(x: 227, y: 486))
            path.addQuadCurve(to: CGPoint(x: 196, y: 450), control:
                                CGPoint(x: 180, y: 463))
        }
    }
}
struct Leftfoot: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in//
            path.move(to: CGPoint(x: 110, y: 450))
            path.addQuadCurve(to: CGPoint(x: 166, y: 450), control:
                                CGPoint(x: 133, y: 460))
            path.addQuadCurve(to: CGPoint(x: 172, y: 477), control:
                                CGPoint(x: 190, y: 463))
            path.addQuadCurve(to: CGPoint(x: 110, y: 477), control:
                                CGPoint(x: 136, y: 486))
            path.addQuadCurve(to: CGPoint(x: 110, y: 450), control:
                                CGPoint(x: 83, y: 460))
        }
    }
}
struct Righthand: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in//
            path.move(to: CGPoint(x: 263, y: 295))
            path.addQuadCurve(to: CGPoint(x: 315, y: 353), control:
                                CGPoint(x: 296, y: 320))
            path.addQuadCurve(to: CGPoint(x: 273, y: 362), control:
                                CGPoint(x: 296, y: 326))
            path.addQuadCurve(to: CGPoint(x: 263, y: 295), control:
                                CGPoint(x: 270, y: 328))
        }
    }
}
struct Lefthand: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x: 110, y: 295))
            path.addQuadCurve(to: CGPoint(x: 58, y: 353), control:
                                CGPoint(x: 83, y: 320))
            path.addQuadCurve(to: CGPoint(x: 100, y: 362), control:
                                CGPoint(x: 83, y: 326))
            path.addQuadCurve(to: CGPoint(x: 110, y: 295), control:
                                CGPoint(x: 103, y: 328))
        }
    }
}
struct Chain: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x: 110, y: 280))
            path.addQuadCurve(to: CGPoint(x: 263, y: 280), control:
                                CGPoint(x: 182, y: 300))
            path.addQuadCurve(to: CGPoint(x: 263, y: 295), control:
                                CGPoint(x: 263, y: 300))
            path.addQuadCurve(to: CGPoint(x: 110, y: 295), control:
                                CGPoint(x: 182, y: 325))
            path.addQuadCurve(to: CGPoint(x: 110, y: 280), control:
                                CGPoint(x: 110, y: 300))
        }
    }
}

struct mushroom: View {
    var body: some View {
        Group{
            mush().fill(Color.red)
            //mush().fill(Color.green)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:42,y:200,width:35,height:100))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:300,y:200,width:35,height:100))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:125,y:140,width:120,height:105))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:75 ,y:270,width:220,height:130))
            }.fill(Color(red: 0.983, green: 0.876, blue: 0.762))
            Path{ (path)in
                path.addEllipse(in: CGRect(x:140,y:280,width:20,height:60))
            }.fill(Color.black)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:200,y:280,width:20,height:60))
            }.fill(Color.black)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:146,y:285,width:8,height:20))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:207,y:285,width:8,height:20))
            }.fill(Color.white)
        }
    }
}
struct mush:Shape {
    func path(in rect: CGRect) -> Path{
        Path {(path) in
                path.addEllipse(in: CGRect(x:38,y:121,width:300,height:260))
            }
        }
    }
struct box:Shape {
    func path(in rect: CGRect) -> Path{
        Path{(path)in
            path.addRect(CGRect(x:50,y:100,width:100,height:100))
        }
        }
    }
struct block: View {
    var body: some View {
        ZStack{
            Group{
                Path{(path) in
                    path.addRect(CGRect(x:50,y:100,width:100,height:100))
                }.fill(Color(red: 0.451, green: 0.212, blue: 0.005))
                Path{(path) in
                    path.addRect(CGRect(x:50,y:100,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:105,y:100,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:50,y:137.5,width:15,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:77.5,y:137.5,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:135,y:137.5,width:15,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:50,y:175,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:105,y:175,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                
            }}
    }
}

struct question_box: View {
    var body: some View {
        ZStack{
            box().fill(Color(red: 0.934, green: 0.758, blue: 0.125))
            //box().fill(Color(red: 0.451, green: 0.212, blue: 0.005))
            Path{(path)in
                path.addEllipse(in: CGRect(x:52,y:102,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            Path{(path)in
                path.addEllipse(in: CGRect(x:138,y:102,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            Path{(path)in
                path.addEllipse(in: CGRect(x:52,y:188,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            Path{(path)in
                path.addEllipse(in: CGRect(x:138,y:188,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            mark()
            Path{(path)in
                path.addRect(CGRect(x:84,y:175,width:30,height:22))
            }.fill(Color(red: 0.817, green: 0.568, blue: 0.025))
            Path{(path)in
                path.addRect(CGRect(x:85,y:176,width:28,height:20))
            }.fill(Color.white)
        }
    }
}

struct mark: View {
    var body: some View {
        Path{(path)in
            path.move(to :CGPoint(x:84,y:170))
            path.addLine(to:CGPoint(x:113,y:170))
            path.addLine(to:CGPoint(x:114,y:168))
            path.addLine(to:CGPoint(x:114,y:156))
            path.addLine(to:CGPoint(x:126,y:156))
            path.addLine(to:CGPoint(x:136,y:146))
            path.addLine(to:CGPoint(x:136,y:120))
            path.addLine(to:CGPoint(x:126,y:110))
            path.addLine(to:CGPoint(x:70,y:110))
            path.addLine(to:CGPoint(x:60,y:120))
            path.addLine(to:CGPoint(x:60,y:140))
            path.addLine(to:CGPoint(x:80,y:140))
            path.addLine(to:CGPoint(x:80,y:125))
            path.addLine(to:CGPoint(x:114,y:125))
            path.addLine(to:CGPoint(x:114,y:140))
            path.addLine(to:CGPoint(x:84,y:140))
            path.addLine(to:CGPoint(x:84,y:160))
            path.addLine(to:CGPoint(x:84,y:170))
            path.closeSubpath()
        }.fill(Color.white)
    }
}
