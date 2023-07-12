//
// GuestOrderCustomer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The Guest Customer Placing the Order */
public struct GuestOrderCustomer: Codable, JSONEncodable, Hashable {

    /** First Name */
    public var firstName: String
    /** Last Name */
    public var lastName: String
    /** Email Address of Customer */
    public var email: String
    public var shippingAddress: OrderAddress?
    public var billingAddress: OrderAddress?
    /** Use Same Address for Both  */
    public var sameAddress: Bool? = false

    public init(firstName: String, lastName: String, email: String, shippingAddress: OrderAddress? = nil, billingAddress: OrderAddress? = nil, sameAddress: Bool? = false) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.shippingAddress = shippingAddress
        self.billingAddress = billingAddress
        self.sameAddress = sameAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName = "first_name"
        case lastName = "last_name"
        case email
        case shippingAddress = "shipping_address"
        case billingAddress = "billing_address"
        case sameAddress = "same_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        try container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        try container.encodeIfPresent(sameAddress, forKey: .sameAddress)
    }
}

