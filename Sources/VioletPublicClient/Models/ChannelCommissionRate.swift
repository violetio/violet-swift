//
// ChannelCommissionRate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The status object for the channel commission rate */
public struct ChannelCommissionRate: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case complete = "complete"
        case incomplete = "incomplete"
        case needsAttention = "needs_attention"
        case notApplicable = "not_applicable"
    }
    /** The app id overriding the merchant commission rate */
    public var appId: Int?
    public var error: ModelError?
    /** The commission rate this merchant pays to the channel */
    public var rate: Double?
    /** The status of the given property */
    public var status: Status?

    public init(appId: Int? = nil, error: ModelError? = nil, rate: Double? = nil, status: Status? = nil) {
        self.appId = appId
        self.error = error
        self.rate = rate
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appId = "app_id"
        case error
        case rate
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(rate, forKey: .rate)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

