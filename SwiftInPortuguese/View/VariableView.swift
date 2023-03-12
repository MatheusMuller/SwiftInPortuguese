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
                }
            }
        }
    }
}

struct VariableView_Previews: PreviewProvider {
    static let variableConts: [String: VariableModel] = Bundle.main.decode("VariableData.json")
    
    static var previews: some View {
        VariableView(variableCont: variableConts["variable"]!)
    }
}
