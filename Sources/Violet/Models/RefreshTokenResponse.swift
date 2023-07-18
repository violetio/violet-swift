//
// RefreshTokenResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Refresh Token Response */
public struct RefreshTokenResponse: Codable, JSONEncodable, Hashable {

    /** Token */
    public var token: String

    public init(token: String) {
        self.token = token
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case token
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(token, forKey: .token)
    }
}
