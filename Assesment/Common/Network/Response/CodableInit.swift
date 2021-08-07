//
//  CodableInit.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

protocol CodableInit {
    
  init(data: Data) throws
}

extension CodableInit where Self: Codable {
  
  init(data: Data) throws {
    let decoder = JSONDecoder()
    self = try decoder.decode(Self.self, from: data)
  }
}
