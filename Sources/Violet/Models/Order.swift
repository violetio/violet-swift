//
// Order.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Order */
public struct Order: Codable, JSONEncodable, Hashable {

    public enum OrderStatus: String, Codable, CaseIterable {
        case inProgress = "IN_PROGRESS"
        case processing = "PROCESSING"
        case completed = "COMPLETED"
        case canceled = "CANCELED"
        case partiallyRefunded = "PARTIALLY_REFUNDED"
        case refunded = "REFUNDED"
        case requiresAction = "REQUIRES_ACTION"
    }
    public enum Status: String, Codable, CaseIterable {
        case inProgress = "IN_PROGRESS"
        case processing = "PROCESSING"
        case completed = "COMPLETED"
        case canceled = "CANCELED"
        case partiallyRefunded = "PARTIALLY_REFUNDED"
        case refunded = "REFUNDED"
        case requiresAction = "REQUIRES_ACTION"
    }
    /** App Customer ID */
    public var appCustomerId: String?
    /** ID of the App creating the order */
    public var appId: Int?
    /** Name of app that originated the order. */
    public var appName: String?
    /** App Order ID */
    public var appOrderId: String?
    /** Bags in the Order */
    public var bags: [Bag]?
    public var billingAddress: OrderAddress?
    /** Base currency of cart */
    public var currency: String?
    /** Symbol representing the desired currency */
    public var currencySymbol: String?
    public var customer: OrderCustomer?
    /** Date of order creation */
    public var dateCreated: Date?
    /** Date of last order update */
    public var dateLastModified: Date?
    /** ID of the Developer who placed */
    public var developerId: Int?
    /** Discount Total of the Order */
    public var discountTotal: Int?
    /** Errors on the Order */
    public var errors: [OrderError]?
    public var guest: Bool?
    public var id: Int64?
    public var intentBasedCheckout: Bool?
    /** Order is Guest */
    public var isGuest: Bool?
    public var orderId: Int64?
    public var orderStatus: OrderStatus?
    /** Payment intent client secret */
    public var paymentIntentClientSecret: String?
    public var paymentMethod: OrderPaymentMethod?
    /** Is the cart priced */
    public var priced: Bool?
    /** Optional value used to represent an identifier in your system. */
    public var referralId: String?
    public var shippingAddress: OrderAddress?
    /** Shipping Total of the Order */
    public var shippingTotal: Int?
    /** Status of the Order */
    public var status: Status?
    /** Stripe publishable key. Use for tokenizing payment methods. */
    public var stripeKey: String?
    /** Subtotal of the Order */
    public var subTotal: Int?
    /** Tax Total of the Order */
    public var taxTotal: Int?
    public var token: String?
    /** Total of the Order */
    public var total: Int?
    /** ID of the User placing the order */
    public var userId: Int64?
    /** Is this cart going to be placed through wallet-based checkout */
    public var walletBasedCheckout: Bool?

    public init(appCustomerId: String? = nil, appId: Int? = nil, appName: String? = nil, appOrderId: String? = nil, bags: [Bag]? = nil, billingAddress: OrderAddress? = nil, currency: String? = nil, currencySymbol: String? = nil, customer: OrderCustomer? = nil, dateCreated: Date? = nil, dateLastModified: Date? = nil, developerId: Int? = nil, discountTotal: Int? = nil, errors: [OrderError]? = nil, guest: Bool? = nil, id: Int64? = nil, intentBasedCheckout: Bool? = nil, isGuest: Bool? = nil, orderId: Int64? = nil, orderStatus: OrderStatus? = nil, paymentIntentClientSecret: String? = nil, paymentMethod: OrderPaymentMethod? = nil, priced: Bool? = nil, referralId: String? = nil, shippingAddress: OrderAddress? = nil, shippingTotal: Int? = nil, status: Status? = nil, stripeKey: String? = nil, subTotal: Int? = nil, taxTotal: Int? = nil, token: String? = nil, total: Int? = nil, userId: Int64? = nil, walletBasedCheckout: Bool? = nil) {
        self.appCustomerId = appCustomerId
        self.appId = appId
        self.appName = appName
        self.appOrderId = appOrderId
        self.bags = bags
        self.billingAddress = billingAddress
        self.currency = currency
        self.currencySymbol = currencySymbol
        self.customer = customer
        self.dateCreated = dateCreated
        self.dateLastModified = dateLastModified
        self.developerId = developerId
        self.discountTotal = discountTotal
        self.errors = errors
        self.guest = guest
        self.id = id
        self.intentBasedCheckout = intentBasedCheckout
        self.isGuest = isGuest
        self.orderId = orderId
        self.orderStatus = orderStatus
        self.paymentIntentClientSecret = paymentIntentClientSecret
        self.paymentMethod = paymentMethod
        self.priced = priced
        self.referralId = referralId
        self.shippingAddress = shippingAddress
        self.shippingTotal = shippingTotal
        self.status = status
        self.stripeKey = stripeKey
        self.subTotal = subTotal
        self.taxTotal = taxTotal
        self.token = token
        self.total = total
        self.userId = userId
        self.walletBasedCheckout = walletBasedCheckout
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appCustomerId = "app_customer_id"
        case appId = "app_id"
        case appName = "app_name"
        case appOrderId = "app_order_id"
        case bags
        case billingAddress = "billing_address"
        case currency
        case currencySymbol = "currency_symbol"
        case customer
        case dateCreated = "date_created"
        case dateLastModified = "date_last_modified"
        case developerId = "developer_id"
        case discountTotal = "discount_total"
        case errors
        case guest
        case id
        case intentBasedCheckout
        case isGuest = "is_guest"
        case orderId
        case orderStatus
        case paymentIntentClientSecret = "payment_intent_client_secret"
        case paymentMethod = "payment_method"
        case priced
        case referralId = "referral_id"
        case shippingAddress = "shipping_address"
        case shippingTotal = "shipping_total"
        case status
        case stripeKey = "stripe_key"
        case subTotal = "sub_total"
        case taxTotal = "tax_total"
        case token
        case total
        case userId = "user_id"
        case walletBasedCheckout = "wallet_based_checkout"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appCustomerId, forKey: .appCustomerId)
        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(appOrderId, forKey: .appOrderId)
        try container.encodeIfPresent(bags, forKey: .bags)
        try container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        try container.encodeIfPresent(customer, forKey: .customer)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateLastModified, forKey: .dateLastModified)
        try container.encodeIfPresent(developerId, forKey: .developerId)
        try container.encodeIfPresent(discountTotal, forKey: .discountTotal)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encodeIfPresent(guest, forKey: .guest)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(intentBasedCheckout, forKey: .intentBasedCheckout)
        try container.encodeIfPresent(isGuest, forKey: .isGuest)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(orderStatus, forKey: .orderStatus)
        try container.encodeIfPresent(paymentIntentClientSecret, forKey: .paymentIntentClientSecret)
        try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        try container.encodeIfPresent(priced, forKey: .priced)
        try container.encodeIfPresent(referralId, forKey: .referralId)
        try container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        try container.encodeIfPresent(shippingTotal, forKey: .shippingTotal)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(stripeKey, forKey: .stripeKey)
        try container.encodeIfPresent(subTotal, forKey: .subTotal)
        try container.encodeIfPresent(taxTotal, forKey: .taxTotal)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(walletBasedCheckout, forKey: .walletBasedCheckout)
    }
}

