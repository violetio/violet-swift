//
// SearchRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Order Search Request */
public struct SearchRequest: Codable, JSONEncodable, Hashable {

    /** Order ID in the App's System */
    public var appOrderId: String?
    /** Bag ID */
    public var bagId: Int64?
    /** Order ID in the External Commerce Platform */
    public var externalOrderId: String?
    /** Order ID */
    public var orderId: Int64?
    /** Referral ID */
    public var referralId: String?
    /** User ID */
    public var userId: Int64?

    public init(appOrderId: String? = nil, bagId: Int64? = nil, externalOrderId: String? = nil, orderId: Int64? = nil, referralId: String? = nil, userId: Int64? = nil) {
        self.appOrderId = appOrderId
        self.bagId = bagId
        self.externalOrderId = externalOrderId
        self.orderId = orderId
        self.referralId = referralId
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appOrderId = "app_order_id"
        case bagId = "bag_id"
        case externalOrderId = "external_order_id"
        case orderId = "order_id"
        case referralId = "referral_id"
        case userId = "user_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appOrderId, forKey: .appOrderId)
        try container.encodeIfPresent(bagId, forKey: .bagId)
        try container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(referralId, forKey: .referralId)
        try container.encodeIfPresent(userId, forKey: .userId)
    }
}

