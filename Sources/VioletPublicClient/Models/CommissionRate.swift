//
// CommissionRate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The status object for the merchant commission rate */
public struct CommissionRate: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case complete = "complete"
        case incomplete = "incomplete"
        case needsAttention = "needs_attention"
        case notApplicable = "not_applicable"
    }
    /** The default commission rate this merchant pays to a channel if it is not overridden */
    public var defaultRate: Double?
    public var error: ModelError?
    /** A list of commission rate overrides this merchant has configured */
    public var overrides: [ChannelCommissionRate]?
    /** The status of the given property */
    public var status: Status?

    public init(defaultRate: Double? = nil, error: ModelError? = nil, overrides: [ChannelCommissionRate]? = nil, status: Status? = nil) {
        self.defaultRate = defaultRate
        self.error = error
        self.overrides = overrides
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case defaultRate = "default_rate"
        case error
        case overrides
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(defaultRate, forKey: .defaultRate)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(overrides, forKey: .overrides)
        try container.encodeIfPresent(status, forKey: .status)
    }
}
