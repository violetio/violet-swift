//
// OrderShippingMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Shipping Methods belonging to an Order */
public struct OrderShippingMethod: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case variable = "VARIABLE"
        case flatRate = "FLAT_RATE"
    }
    public enum Carrier: String, Codable, CaseIterable {
        case ups = "UPS"
        case usps = "USPS"
        case fedex = "FEDEX"
        case dhl = "DHL"
        case ontrac = "ONTRAC"
        case other = "OTHER"
    }
    /** Type of Shipping Method */
    public var type: ModelType?
    public var carrier: Carrier?
    /** Shipping Method Label */
    public var label: String?
    /** Total cost of the Shipping Method */
    public var price: Int
    /** Minimum Subtotal */
    public var minSubtotal: Int?
    public var maxSubtotal: Int?
    /** Minimum Weight */
    public var minWeight: Double?
    /** Maximum Weight */
    public var maxWeight: Double?
    public var id: Int64?
    /** ID of the referenced Shipping Method */
    public var shippingMethodId: String
    /** ID of the Bag the Shipping Method applies to */
    public var bagId: Int64
    /** ID of the merchant the bag belongs to */
    public var merchantId: Int?
    /** Carrier Tracking Number */
    public var trackingNumber: String?

    public init(type: ModelType? = nil, carrier: Carrier? = nil, label: String? = nil, price: Int, minSubtotal: Int? = nil, maxSubtotal: Int? = nil, minWeight: Double? = nil, maxWeight: Double? = nil, id: Int64? = nil, shippingMethodId: String, bagId: Int64, merchantId: Int? = nil, trackingNumber: String? = nil) {
        self.type = type
        self.carrier = carrier
        self.label = label
        self.price = price
        self.minSubtotal = minSubtotal
        self.maxSubtotal = maxSubtotal
        self.minWeight = minWeight
        self.maxWeight = maxWeight
        self.id = id
        self.shippingMethodId = shippingMethodId
        self.bagId = bagId
        self.merchantId = merchantId
        self.trackingNumber = trackingNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case carrier
        case label
        case price
        case minSubtotal = "min_subtotal"
        case maxSubtotal = "max_subtotal"
        case minWeight = "min_weight"
        case maxWeight = "max_weight"
        case id
        case shippingMethodId = "shipping_method_id"
        case bagId = "bag_id"
        case merchantId = "merchant_id"
        case trackingNumber = "tracking_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(carrier, forKey: .carrier)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encode(price, forKey: .price)
        try container.encodeIfPresent(minSubtotal, forKey: .minSubtotal)
        try container.encodeIfPresent(maxSubtotal, forKey: .maxSubtotal)
        try container.encodeIfPresent(minWeight, forKey: .minWeight)
        try container.encodeIfPresent(maxWeight, forKey: .maxWeight)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(shippingMethodId, forKey: .shippingMethodId)
        try container.encode(bagId, forKey: .bagId)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(trackingNumber, forKey: .trackingNumber)
    }
}
