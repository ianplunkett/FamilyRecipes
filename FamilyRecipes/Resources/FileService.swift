//
//  FileService.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/28/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//
import Foundation

class FileService {

    func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in the main bundle")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")

        }
    }
}
