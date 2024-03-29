//
// PolicyAcceptance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Record of User accepting a policy. */
public struct PolicyAcceptance: Codable, JSONEncodable, Hashable {

    public enum PolicyType: String, Codable, CaseIterable {
        case termsOfService = "TERMS_OF_SERVICE"
        case privacy = "PRIVACY"
        case channelPaymentBypass = "CHANNEL_PAYMENT_BYPASS"
    }
    /** Date the user first accepted this version of the policy. */
    public var dateAccepted: Date?
    /** IP Address of User during policy acceptance */
    public var ipAddress: String?
    /** Type of policy being accepted */
    public var policyType: PolicyType?
    /** Email address of the user who accepted a policy. */
    public var userEmailAddress: String?
    /** ID of User accepting the policy */
    public var userId: Int64?
    /** Version of policy */
    public var version: String?

    public init(dateAccepted: Date? = nil, ipAddress: String? = nil, policyType: PolicyType? = nil, userEmailAddress: String? = nil, userId: Int64? = nil, version: String? = nil) {
        self.dateAccepted = dateAccepted
        self.ipAddress = ipAddress
        self.policyType = policyType
        self.userEmailAddress = userEmailAddress
        self.userId = userId
        self.version = version
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dateAccepted = "date_accepted"
        case ipAddress = "ip_address"
        case policyType = "policy_type"
        case userEmailAddress = "user_email_address"
        case userId = "user_id"
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dateAccepted, forKey: .dateAccepted)
        try container.encodeIfPresent(ipAddress, forKey: .ipAddress)
        try container.encodeIfPresent(policyType, forKey: .policyType)
        try container.encodeIfPresent(userEmailAddress, forKey: .userEmailAddress)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(version, forKey: .version)
    }
}

