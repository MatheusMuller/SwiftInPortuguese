//
//  IntroView.swift
//  SwiftInPortuguese
//
//  Created by Matheus Müller on 06/03/23.
//

import SwiftUI

struct IntroView: View {
    let introContent: IntroModel
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text("Introdução")
                        .font(.title.bold())
                    
                    Text(introContent.description1)
                        .padding()
                    
                    Spacer(minLength: 50)
                    
                    Text("O que é o SWIFT?")
                        .font(.title2)
                    
                    Image("swiftBanner1")
                        .resizable()
                        .scaledToFit()
                    
                    Text(introContent.description2)
                        .padding()
                    
                    Spacer(minLength: 50)
                    
                    Text("O que preciso para começar?")
                        .font(.title2)
                    
                    Text(introContent.description3)
                        .padding()
                }
                
                Group {
                    Spacer(minLength: 50)
                    
                    Text("Primeiros passos")
                        .font(.title2)
                    
                    Text(introContent.description4)
                        .padding()
                    
                    Text("Primeiro, instale o Xcode diretamente pela App Store do Mac.")
                        .padding()
                    
                    Image("installXcode")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer(minLength: 30)
                    
                    Text(introContent.description5)
                        .padding()
                    
                    Image("xcodeNewProj")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer(minLength: 30)
                    
                    Image("xcodeAppSelect")
                        .resizable()
                        .scaledToFit()
                }
                
                Group {
                    Spacer(minLength: 30)
                    
                    Text(introContent.description6)
                        .padding()
                    
                    Image("xcodeProjName")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer(minLength: 30)
                    
                    Text(introContent.description7)
                        .font(.title3)
                        .padding()
                }
            }
        }
        .background(Color(red: 0.9, green: 0.9, blue: 0.9))
    }
}

struct IntroView_Previews: PreviewProvider {
    static let introContents: [String: IntroModel] = Bundle.main.decode("IntroData.json")
    
    static var previews: some View {
        IntroView(introContent: introContents["intro"]!)
    }
}
