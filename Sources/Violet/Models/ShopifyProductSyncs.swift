//
// ShopifyProductSyncs.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Shopify Product Sync Tracking &amp; Status */
public struct ShopifyProductSyncs: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case notStarted = "NOT_STARTED"
        case pending = "PENDING"
        case inProgress = "IN_PROGRESS"
        case completed = "COMPLETED"
        case failed = "FAILED"
    }
    /** Should the sync be aborted */
    public var abort: Bool?
    /** Date of last sync */
    public var dateLastSynced: Date?
    public var id: Int?
    /** Merchant ID */
    public var merchantId: Int
    /** Does this merchant require a resync */
    public var resyncRequired: Bool?
    /** Status of Sync */
    public var status: Status?
    /** Has the taxonomy been synced */
    public var taxonomySynced: Bool?
    /** Total number of products in the store */
    public var totalProducts: Int?
    /** Total number of products successfully synced */
    public var totalProductsSynced: Int?
    /** Have the webhooks been created */
    public var webhooksCreated: Bool?

    public init(abort: Bool? = nil, dateLastSynced: Date? = nil, id: Int? = nil, merchantId: Int, resyncRequired: Bool? = nil, status: Status? = nil, taxonomySynced: Bool? = nil, totalProducts: Int? = nil, totalProductsSynced: Int? = nil, webhooksCreated: Bool? = nil) {
        self.abort = abort
        self.dateLastSynced = dateLastSynced
        self.id = id
        self.merchantId = merchantId
        self.resyncRequired = resyncRequired
        self.status = status
        self.taxonomySynced = taxonomySynced
        self.totalProducts = totalProducts
        self.totalProductsSynced = totalProductsSynced
        self.webhooksCreated = webhooksCreated
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case abort
        case dateLastSynced = "date_last_synced"
        case id
        case merchantId = "merchant_id"
        case resyncRequired = "resync_required"
        case status
        case taxonomySynced = "taxonomy_synced"
        case totalProducts = "total_products"
        case totalProductsSynced = "total_products_synced"
        case webhooksCreated = "webhooks_created"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(abort, forKey: .abort)
        try container.encodeIfPresent(dateLastSynced, forKey: .dateLastSynced)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(resyncRequired, forKey: .resyncRequired)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(taxonomySynced, forKey: .taxonomySynced)
        try container.encodeIfPresent(totalProducts, forKey: .totalProducts)
        try container.encodeIfPresent(totalProductsSynced, forKey: .totalProductsSynced)
        try container.encodeIfPresent(webhooksCreated, forKey: .webhooksCreated)
    }
}
