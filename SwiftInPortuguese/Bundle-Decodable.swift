//
//  Bundle-Decodable.swift
//  SwiftInPortuguese
//
//  Created by Matheus Müller on 06/03/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Falha ao localizar \(file) no Bundle!")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Falha ao carregar \(file) do Bundle!")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Falha ao decodificar \(file) do Bundle!")
        }
        
        return loaded
    }
}
