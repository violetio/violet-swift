//
// Media.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Product and SKU Media */
public struct Media: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case image = "IMAGE"
        case video = "VIDEO"
    }
    /** Album ID */
    public var albumId: Int64
    /** ID of hosted cloud entity */
    public var cloudId: String?
    /** Display Order */
    public var displayOrder: Int?
    /** External ID */
    public var externalId: String?
    public var id: Int64?
    /** Primary Media */
    public var primary: Bool?
    /** Media Source URL */
    public var sourceUrl: String?
    /** Media Type */
    public var type: ModelType?
    /** Media URL */
    public var url: String?

    public init(albumId: Int64, cloudId: String? = nil, displayOrder: Int? = nil, externalId: String? = nil, id: Int64? = nil, primary: Bool? = nil, sourceUrl: String? = nil, type: ModelType? = nil, url: String? = nil) {
        self.albumId = albumId
        self.cloudId = cloudId
        self.displayOrder = displayOrder
        self.externalId = externalId
        self.id = id
        self.primary = primary
        self.sourceUrl = sourceUrl
        self.type = type
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case albumId = "album_id"
        case cloudId = "cloud_id"
        case displayOrder = "display_order"
        case externalId = "external_id"
        case id
        case primary
        case sourceUrl = "source_url"
        case type
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(albumId, forKey: .albumId)
        try container.encodeIfPresent(cloudId, forKey: .cloudId)
        try container.encodeIfPresent(displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(primary, forKey: .primary)
        try container.encodeIfPresent(sourceUrl, forKey: .sourceUrl)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(url, forKey: .url)
    }
}
