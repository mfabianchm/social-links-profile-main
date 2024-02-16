//
//  ContentView.swift
//  social-links-profile-main
//
//  Created by Marcos Fabian Chong Megchun on 15/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State  var firstBtnPressed: Bool = false
    @State  var secondBtnPressed: Bool = false
    @State  var thirdBtnPressed: Bool = false
    @State  var fourthBtnPressed: Bool = false
    @State  var fifthBtnPressed: Bool = false
    
    var body: some View {
        Color("OffBlack")
            .ignoresSafeArea()
            .overlay {
                VStack {
                        Image("Avatar")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .padding(.bottom)
                    Text("Jessica Randall")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 36))
                        .padding(5)
                    Text("London, United Kingdom")
                        .foregroundColor(Color("Green"))
                        .fontWeight(.heavy)
                        .font(.system(size: 15))
                        .padding(.bottom)
                    Text("\"Front-end developer and avid reader\"")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 15))
                    VStack(spacing: 18) {
                        Button(action: {
                            self.firstBtnPressed = true
                            self.secondBtnPressed = false
                            self.thirdBtnPressed = false
                            self.fourthBtnPressed = false
                            self.fifthBtnPressed = false
                        }) {
                            Text("GitHub")
                                .frame(maxWidth: .infinity)
                                .padding(14)
                                .fontWeight(.heavy)
                                .foregroundStyle(firstBtnPressed ? .black : .white)
                                .background(firstBtnPressed ? Color("Green") : Color("Grey"), in: RoundedRectangle(cornerRadius: 10))
                        }
                        Button(action: {
                            self.firstBtnPressed = false
                            self.secondBtnPressed = true
                            self.thirdBtnPressed = false
                            self.fourthBtnPressed = false
                            self.fifthBtnPressed = false
                        }) {
                            Text("Frontend Mentor")
                                .frame(maxWidth: .infinity)
                                .padding(14)
                                .fontWeight(.heavy)
                                .foregroundStyle(secondBtnPressed ? .black : .white)
                                .background(secondBtnPressed ? Color("Green") : Color("Grey"), in: RoundedRectangle(cornerRadius: 10))
                        }
                        Button(action: {
                            self.firstBtnPressed = false
                            self.secondBtnPressed = false
                            self.thirdBtnPressed = true
                            self.fourthBtnPressed = false
                            self.fifthBtnPressed = false
                        }) {
                            Text("LinkedIn")
                                .frame(maxWidth: .infinity)
                                .padding(14)
                                .fontWeight(.heavy)
                                .foregroundStyle(thirdBtnPressed ? .black : .white)
                                .background(thirdBtnPressed ? Color("Green") : Color("Grey"), in: RoundedRectangle(cornerRadius: 10))
                        }
                        Button(action: {
                            self.firstBtnPressed = false
                            self.secondBtnPressed = false
                            self.thirdBtnPressed = false
                            self.fourthBtnPressed = true
                            self.fifthBtnPressed = false
                        }) {
                            Text("Twitter")
                                .frame(maxWidth: .infinity)
                                .padding(14)
                                .fontWeight(.heavy)
                                .foregroundStyle(fourthBtnPressed ? .black : .white)
                                .background(fourthBtnPressed ? Color("Green") : Color("Grey"), in: RoundedRectangle(cornerRadius: 10))
                        }
                        Button(action: {
                            self.firstBtnPressed = false
                            self.secondBtnPressed = false
                            self.thirdBtnPressed = false
                            self.fourthBtnPressed = false
                            self.fifthBtnPressed = true
                        }) {
                            Text("Instagram")
                                .frame(maxWidth: .infinity)
                                .padding(14)
                                .fontWeight(.heavy)
                                .foregroundStyle(fifthBtnPressed ? .black : .white)
                                .background(fifthBtnPressed ? Color("Green") : Color("Grey"), in: RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    .padding(30)
        
                }
            }
            
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
