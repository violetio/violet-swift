//
// Album.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Product Image Container */
public struct Album: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case offer = "OFFER"
        case sku = "SKU"
    }
    public var id: Int64?
    /** Album media */
    public var media: Set<Media>?
    /** Name of Album */
    public var name: String?
    /** ID of the parent entity */
    public var parentId: Int64
    public var primaryMedia: Media?
    /** Parent Type */
    public var type: ModelType

    public init(id: Int64? = nil, media: Set<Media>? = nil, name: String? = nil, parentId: Int64, primaryMedia: Media? = nil, type: ModelType) {
        self.id = id
        self.media = media
        self.name = name
        self.parentId = parentId
        self.primaryMedia = primaryMedia
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case media
        case name
        case parentId = "parent_id"
        case primaryMedia = "primary_media"
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(media, forKey: .media)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(parentId, forKey: .parentId)
        try container.encodeIfPresent(primaryMedia, forKey: .primaryMedia)
        try container.encode(type, forKey: .type)
    }
}

