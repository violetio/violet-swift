//
// BagFulfillment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BagFulfillment: Codable, JSONEncodable, Hashable {

    public enum Carrier: String, Codable, CaseIterable {
        case other = "OTHER"
        case ups = "UPS"
        case usps = "USPS"
        case fedex = "FEDEX"
        case dhl = "DHL"
        case ontrac = "ONTRAC"
        case royalMail = "ROYAL_MAIL"
        case sendle = "SENDLE"
        case postnord = "POSTNORD"
    }
    public enum CarrierStatus: String, Codable, CaseIterable {
        case pending = "PENDING"
        case labelPurchased = "LABEL_PURCHASED"
        case labelPrinted = "LABEL_PRINTED"
        case confirmed = "CONFIRMED"
        case readyForPickup = "READY_FOR_PICKUP"
        case inTransit = "IN_TRANSIT"
        case outForDelivery = "OUT_FOR_DELIVERY"
        case attemptedDelivery = "ATTEMPTED_DELIVERY"
        case delivered = "DELIVERED"
        case failure = "FAILURE"
        case noneProvided = "NONE_PROVIDED"
    }
    public enum Status: String, Codable, CaseIterable {
        case pending = "PENDING"
        case processing = "PROCESSING"
        case success = "SUCCESS"
        case canceled = "CANCELED"
        case error = "ERROR"
        case failure = "FAILURE"
        case noneProvided = "NONE_PROVIDED"
    }
    /** ID of the bag the fulfillment belongs to. */
    public var bagId: Int64?
    /** Carrier responsible for the fulfillment. */
    public var carrier: Carrier?
    /** ID of the Bag the fulfillment belongs to. */
    public var carrierStatus: CarrierStatus?
    /** ID of the fulfillment on the external commerce platform. */
    public var externalId: String?
    public var id: Int64?
    /** Raw name of carrier from the external commerce platform. */
    public var rawCarrier: String?
    /** SKUs fulfilled by this fulfillment. */
    public var skus: Set<BagFulfillmentSku>?
    /** ID of the Bag the fulfillment belongs to. */
    public var status: Status?
    /** Tracking number provider by the carrier. */
    public var trackingNumber: String?
    /** Tracking URL provider by the carrier. */
    public var trackingUrl: String?

    public init(bagId: Int64? = nil, carrier: Carrier? = nil, carrierStatus: CarrierStatus? = nil, externalId: String? = nil, id: Int64? = nil, rawCarrier: String? = nil, skus: Set<BagFulfillmentSku>? = nil, status: Status? = nil, trackingNumber: String? = nil, trackingUrl: String? = nil) {
        self.bagId = bagId
        self.carrier = carrier
        self.carrierStatus = carrierStatus
        self.externalId = externalId
        self.id = id
        self.rawCarrier = rawCarrier
        self.skus = skus
        self.status = status
        self.trackingNumber = trackingNumber
        self.trackingUrl = trackingUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bagId = "bag_id"
        case carrier
        case carrierStatus = "carrier_status"
        case externalId = "external_id"
        case id
        case rawCarrier = "raw_carrier"
        case skus
        case status
        case trackingNumber = "tracking_number"
        case trackingUrl = "tracking_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bagId, forKey: .bagId)
        try container.encodeIfPresent(carrier, forKey: .carrier)
        try container.encodeIfPresent(carrierStatus, forKey: .carrierStatus)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(rawCarrier, forKey: .rawCarrier)
        try container.encodeIfPresent(skus, forKey: .skus)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(trackingNumber, forKey: .trackingNumber)
        try container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
    }
}

