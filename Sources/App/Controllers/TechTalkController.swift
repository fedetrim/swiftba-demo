//
//  TechTalkController.swift
//  App
//
//  Created by Federico Trimboli on 16/08/2018.
//

import Foundation
import Vapor

final class TechTalkController {
    
    func index(_ req: Request) throws -> Future<[TechTalk]> {
        return TechTalk.query(on: req).all()
    }
    
    func create(_ req: Request) throws -> Future<TechTalk> {
        return try req.content.decode(TechTalk.self).flatMap { techTalk in
            return techTalk.save(on: req)
        }
    }
    
}
