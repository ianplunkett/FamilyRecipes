//
//  FileService.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/28/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//
import Foundation

struct FileService {
    let bundle: Bundle
}

extension FileService: DataServiceProtocol {

    func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) throws -> T {

        let data: Data

        guard let file = bundle.url(forResource: filename, withExtension: nil) else {
            throw FileServiceError.invalidFileName
        }

        do {
            data = try Data(contentsOf: file)
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw FileServiceError.fileParse
        }
    }
    
/*
    func toJSON(recipes: [Recipe]) -> String {
        guard let jsonData = try? JSONEncoder().encode(recipes) else { return "error!" }
        guard let jsonString = String(data: jsonData, encoding: .utf8) else { return "error!" }
        return jsonString
    }
 */
}

enum FileServiceError: Error {
    case invalidFileName
    case fileLoad
    case fileParse
}
