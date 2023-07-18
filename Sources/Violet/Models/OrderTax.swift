//
// OrderTax.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Taxes belonging to an Order Bag */
public struct OrderTax: Codable, JSONEncodable, Hashable {

    static let descriptionRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** Total Tax amount on Bag */
    public var amount: Int
    /** Description of the Tax */
    public var description: String?
    /** ID of the Merchant the Bag belongs to */
    public var merchantId: Int
    /** ID of the Order the Tax belongs to */
    public var orderId: Int64
    /** Postal/Zip Code */
    public var postalCode: String?
    /** Tax Rate */
    public var rate: Double
    /** SKUs covered by the Tax */
    public var skus: [String]?
    /** State abbreviation */
    public var state: String

    public init(amount: Int, description: String? = nil, merchantId: Int, orderId: Int64, postalCode: String? = nil, rate: Double, skus: [String]? = nil, state: String) {
        self.amount = amount
        self.description = description
        self.merchantId = merchantId
        self.orderId = orderId
        self.postalCode = postalCode
        self.rate = rate
        self.skus = skus
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case description
        case merchantId = "merchant_id"
        case orderId = "order_id"
        case postalCode = "postal_code"
        case rate
        case skus
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(amount, forKey: .amount)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(merchantId, forKey: .merchantId)
        try container.encode(orderId, forKey: .orderId)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encode(rate, forKey: .rate)
        try container.encodeIfPresent(skus, forKey: .skus)
        try container.encode(state, forKey: .state)
    }
}
