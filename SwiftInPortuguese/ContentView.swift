//
//  ContentView.swift
//  SwiftInPortuguese
//
//  Created by Matheus Müller on 28/02/23.
//

import SwiftUI

struct Teste: View {
    var body: some View {
        Text("A View não foi carregada corretamente!")
    }
}

struct ContentView: View {
    @State private var topics = ["Introdução", "Variáveis", "Constantes", "Strings", "Números", "Booleans", "Arrays", "Dicionários", "Sets", "Enums", "Tipos de Dados", "IF", "Switch", "Operadores Ternários", "Loops"]
    @State private var searchText = ""
    
    let introContent: [String: IntroModel] = Bundle.main.decode("IntroData.json")
    
    var body: some View {
        NavigationView {
            VStack {
                Image("swiftLogo")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Text("Swift em Português")
                    .font(.title)
                
                List {
                    Section() {
                        ForEach(topics, id: \.self) { topic in
                            NavigationLink(destination: {
                                VStack {
                                    switch topic {
                                    case "Introdução":
                                        IntroView(introContent: introContent["intro"]!)
                                        
                                    default:
                                        Teste()
                                    }
                                }
                            }, label: {
                                Text(topic)
                            })
                        }
                    } header: {
                        Text("Tópicos").sectionHeaderStyle()
                    }
                }
                .listStyle(InsetGroupedListStyle()) // Remove collapsible Section icon
            }
            .background(Color(red: 0.9, green: 0.9, blue: 0.9))
        }
    }
}

public extension Text {
    func sectionHeaderStyle() -> some View {
        self
            .font(.system(.title3))
            .fontWeight(.bold)
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
