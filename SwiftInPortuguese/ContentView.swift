//
//  ContentView.swift
//  SwiftInPortuguese
//
//  Created by Matheus Müller on 28/02/23.
//

import SwiftUI

struct Casoelse: View {
    var body: some View {
        Text("Caso else funcionou!!!")
    }
}

struct Teste: View {
    let topic: String
    
    var body: some View {
        Text(topic)
    }
}

struct ContentView: View {
    @State private var topics = ["Introdução", "Variáveis", "Constantes", "Strings", "Números", "Booleans", "Arrays", "Dicionários", "Sets", "Enums", "Tipos de Dados", "IF", "Switch", "Operadores Ternários", "Loops"]
    @State private var searchText = ""
    
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
                                    if topic == "Loops" {
                                        Teste(topic: topic)
                                    } else {
                                        Casoelse()
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
