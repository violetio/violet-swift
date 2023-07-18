//
// VariantValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Individual Variation Value */
public struct VariantValue: Codable, JSONEncodable, Hashable {

    /** ID of the Variant in the External Ecommerce Platform */
    public var externalId: String?
    public var id: Int64?
    /** Variant Value Name */
    public var name: String?
    /** ID of the Product Variation Value */
    public var productVariantValueId: String?
    /** ID's of SKU's containing this Variant Value */
    public var skuIds: Set<Int64>?

    public init(externalId: String? = nil, id: Int64? = nil, name: String? = nil, productVariantValueId: String? = nil, skuIds: Set<Int64>? = nil) {
        self.externalId = externalId
        self.id = id
        self.name = name
        self.productVariantValueId = productVariantValueId
        self.skuIds = skuIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case externalId = "external_id"
        case id
        case name
        case productVariantValueId = "product_variant_value_id"
        case skuIds = "sku_ids"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(productVariantValueId, forKey: .productVariantValueId)
        try container.encodeIfPresent(skuIds, forKey: .skuIds)
    }
}
