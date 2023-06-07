//
// WebhookHeader.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Webhook Header */
public struct WebhookHeader: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    /** App ID */
    public var appId: Int64?
    /** ID of the webhook the header belongs to */
    public var webhookId: Int64?
    /** Header Key */
    public var key: String?
    /** Header Value */
    public var value: String?
    /** Date of webhook header creation */
    public var dateCreated: Date?
    /** Date of last webhook header update */
    public var dateLastModified: Date?

    public init(id: Int64? = nil, appId: Int64? = nil, webhookId: Int64? = nil, key: String? = nil, value: String? = nil, dateCreated: Date? = nil, dateLastModified: Date? = nil) {
        self.id = id
        self.appId = appId
        self.webhookId = webhookId
        self.key = key
        self.value = value
        self.dateCreated = dateCreated
        self.dateLastModified = dateLastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case appId = "app_id"
        case webhookId = "webhook_id"
        case key
        case value
        case dateCreated = "date_created"
        case dateLastModified = "date_last_modified"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(webhookId, forKey: .webhookId)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateLastModified, forKey: .dateLastModified)
    }
}

