//
// DiscountRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Discount request */
public struct DiscountRequest: Codable, JSONEncodable, Hashable {

    /** Discount code being applied */
    public var code: String?
    /** ID of the Merchant the discount belongs to */
    public var merchantId: Int?

    public init(code: String? = nil, merchantId: Int? = nil) {
        self.code = code
        self.merchantId = merchantId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case merchantId = "merchant_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
    }
}

