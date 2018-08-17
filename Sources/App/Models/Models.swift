//
//  Models.swift
//  App
//
//  Created by Federico Trimboli on 16/08/2018.
//

import Foundation
import FluentSQLite
import Vapor

struct Speaker: Codable {
    var id: Int?
    var firstName: String
    var lastName: String
    var photoURL: URL
    var githubURL: URL
}

extension Speaker: SQLiteModel { }
extension Speaker: Migration { }
extension Speaker: Content { }

// MARK: - TechTalk

struct TechTalk: Codable {
    var id: Int?
    var title: String
    var description: String
    var speakers: [Speaker]
}

extension TechTalk: SQLiteModel { }
extension TechTalk: Migration { }
extension TechTalk: Content { }
