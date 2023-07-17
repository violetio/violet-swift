//
// ProductVariant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Product Variant */
public struct ProductVariant: Codable, JSONEncodable, Hashable {

    /** Display Order */
    public var displayOrder: Int?
    public var id: String?
    /** Name */
    public var name: String
    /** Product ID */
    public var productId: String
    /** Product Variant values */
    public var values: Set<ProductVariantValue>?
    /** Is this a visual variant */
    public var visual: Bool?

    public init(displayOrder: Int? = nil, id: String? = nil, name: String, productId: String, values: Set<ProductVariantValue>? = nil, visual: Bool? = nil) {
        self.displayOrder = displayOrder
        self.id = id
        self.name = name
        self.productId = productId
        self.values = values
        self.visual = visual
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case displayOrder = "display_order"
        case id
        case name
        case productId = "product_id"
        case values
        case visual
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(productId, forKey: .productId)
        try container.encodeIfPresent(values, forKey: .values)
        try container.encodeIfPresent(visual, forKey: .visual)
    }
}

