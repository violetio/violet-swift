//
// RefundOrderSku.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Refunded Order Sku */
public struct RefundOrderSku: Codable, JSONEncodable, Hashable {

    /** ID of the Bag being refunded */
    public var bagId: Int64?
    /** Variant Id in external Ecom platform */
    public var externalId: String?
    public var id: Int64?
    /** Id of the Order Sku associated with Refund Order Sku */
    public var orderSkuId: Int64?
    /** Quantity of the this item refunded by this refund. */
    public var quantityRefunded: Int?
    /** Id of the Refund associated with Refund Order Sku */
    public var refundId: Int64?

    public init(bagId: Int64? = nil, externalId: String? = nil, id: Int64? = nil, orderSkuId: Int64? = nil, quantityRefunded: Int? = nil, refundId: Int64? = nil) {
        self.bagId = bagId
        self.externalId = externalId
        self.id = id
        self.orderSkuId = orderSkuId
        self.quantityRefunded = quantityRefunded
        self.refundId = refundId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bagId = "bag_id"
        case externalId = "external_id"
        case id
        case orderSkuId = "order_sku_id"
        case quantityRefunded = "quantity_refunded"
        case refundId = "refund_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bagId, forKey: .bagId)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(orderSkuId, forKey: .orderSkuId)
        try container.encodeIfPresent(quantityRefunded, forKey: .quantityRefunded)
        try container.encodeIfPresent(refundId, forKey: .refundId)
    }
}

