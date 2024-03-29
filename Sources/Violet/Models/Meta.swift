//
// Meta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Additional Product MetaData */
public struct Meta: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    /** Key */
    public var key: String?
    /** Offer Id */
    public var offerId: Int64?
    /** Value */
    public var value: String?

    public init(id: Int64? = nil, key: String? = nil, offerId: Int64? = nil, value: String? = nil) {
        self.id = id
        self.key = key
        self.offerId = offerId
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case key
        case offerId = "offer_id"
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(offerId, forKey: .offerId)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

