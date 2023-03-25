//
//  VariableView.swift
//  SwiftInPortuguese
//
//  Created by Matheus Müller on 12/03/23.
//

import SwiftUI

struct VariableView: View {
    let variableCont: VariableModel
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text(variableCont.id)
                        .font(.title.bold())
                    
                    Text(variableCont.description1)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(variableCont.description2)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("varDeclaration")
                        .resizable()
                        .scaledToFit()
                    
                    Text(variableCont.description3)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("varChanging")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer(minLength: 50)
                    
                    Text("Constantes")
                        .font(.title.bold())
                    
                    Text(variableCont.description4)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("letConstant")
                        .resizable()
                        .scaledToFit()
                }
                
                Group {
                    Spacer(minLength: 30)
                    
                    Text(variableCont.description5)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(variableCont.description6)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("varNames")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .background(Color(red: 0.9, green: 0.9, blue: 0.9))
    }
}

struct VariableView_Previews: PreviewProvider {
    static let variableConts: [String: VariableModel] = Bundle.main.decode("VariableData.json")
    
    static var previews: some View {
        VariableView(variableCont: variableConts["variable"]!)
    }
}
