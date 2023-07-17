//
// ModelError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ModelError: Codable, JSONEncodable, Hashable {

    public var code: Int?
    public var error: String?
    public var id: AnyCodable?
    public var ids: [AnyCodable]?
    public var message: String?

    public init(code: Int? = nil, error: String? = nil, id: AnyCodable? = nil, ids: [AnyCodable]? = nil, message: String? = nil) {
        self.code = code
        self.error = error
        self.id = id
        self.ids = ids
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case error
        case id
        case ids
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(message, forKey: .message)
    }
}
