//
// ProductVariantValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Product Variant Value */
public struct ProductVariantValue: Codable, JSONEncodable, Hashable {

    /** Display Order */
    public var displayOrder: Int?
    /** Hex Code */
    public var hex: String?
    public var id: String?
    /** Name */
    public var name: String?
    /** Color/Pattern Swatch URL */
    public var swatch: String?
    /** ID of the Variation */
    public var variantId: String?

    public init(displayOrder: Int? = nil, hex: String? = nil, id: String? = nil, name: String? = nil, swatch: String? = nil, variantId: String? = nil) {
        self.displayOrder = displayOrder
        self.hex = hex
        self.id = id
        self.name = name
        self.swatch = swatch
        self.variantId = variantId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case displayOrder = "display_order"
        case hex
        case id
        case name
        case swatch
        case variantId = "variant_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(hex, forKey: .hex)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(swatch, forKey: .swatch)
        try container.encodeIfPresent(variantId, forKey: .variantId)
    }
}

