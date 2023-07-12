//
// Role.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Role: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: nil, maxLength: nil, pattern: "/[A-Za-z]+/")
    /** Name of the Role */
    public var name: String
    /** Brief description of the Role */
    public var description: String?
    /** Permissions available to this Role */
    public var permissions: [Permission]?

    public init(name: String, description: String? = nil, permissions: [Permission]? = nil) {
        self.name = name
        self.description = description
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(permissions, forKey: .permissions)
    }
}
