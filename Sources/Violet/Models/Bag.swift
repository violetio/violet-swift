//
// Bag.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Per Merchant Bag in Order */
public struct Bag: Codable, JSONEncodable, Hashable {

    public enum BagStatus: String, Codable, CaseIterable {
        case inProgress = "IN_PROGRESS"
        case submitted = "SUBMITTED"
        case accepted = "ACCEPTED"
        case completed = "COMPLETED"
        case partiallyRefunded = "PARTIALLY_REFUNDED"
        case refunded = "REFUNDED"
        case rejected = "REJECTED"
        case canceled = "CANCELED"
        case backordered = "BACKORDERED"
    }
    public enum Channel: String, Codable, CaseIterable {
        case app = "APP"
        case marketplace = "MARKETPLACE"
        case facebook = "FACEBOOK"
        case instagram = "INSTAGRAM"
        case walmart = "WALMART"
        case google = "GOOGLE"
        case tiktok = "TIKTOK"
        case snapchat = "SNAPCHAT"
        case pinterest = "PINTEREST"
    }
    public enum FinancialStatus: String, Codable, CaseIterable {
        case unpaid = "UNPAID"
        case authorized = "AUTHORIZED"
        case pending = "PENDING"
        case paid = "PAID"
        case partiallyPaid = "PARTIALLY_PAID"
        case refunded = "REFUNDED"
        case partiallyRefunded = "PARTIALLY_REFUNDED"
        case voided = "VOIDED"
    }
    public enum FulfillmentStatus: String, Codable, CaseIterable {
        case processing = "PROCESSING"
        case fulfilled = "FULFILLED"
        case partiallyFulfilled = "PARTIALLY_FULFILLED"
        case delivered = "DELIVERED"
        case couldNotDeliver = "COULD_NOT_DELIVER"
        case returned = "RETURNED"
    }
    public enum Platform: String, Codable, CaseIterable {
        case other = "OTHER"
        case shopify = "SHOPIFY"
        case magento = "MAGENTO"
        case magentoOne = "MAGENTO_ONE"
        case woocommerce = "WOOCOMMERCE"
        case bigcommerce = "BIGCOMMERCE"
        case lightspeed = "LIGHTSPEED"
        case ecwid = "ECWID"
        case yaas = "YAAS"
        case spreecommerce = "SPREECOMMERCE"
        case demandware = "DEMANDWARE"
        case volusion = "VOLUSION"
        case prestashop = "PRESTASHOP"
        case threedcart = "THREEDCART"
        case sylius = "SYLIUS"
        case wix = "WIX"
        case swell = "SWELL"
        case miva = "MIVA"
        case websphere = "WEBSPHERE"
        case oraclecc = "ORACLECC"
        case sapcc = "SAPCC"
        case squarespace = "SQUARESPACE"
        case shopware = "SHOPWARE"
        case commercetools = "COMMERCETOOLS"
        case medusa = "MEDUSA"
        case abicart = "ABICART"
        case spryker = "SPRYKER"
        case mystore = "MYSTORE"
        case centra = "CENTRA"
        case xcart = "XCART"
        case vtex = "VTEX"
        case kibo = "KIBO"
        case saleor = "SALEOR"
        case vendo = "VENDO"
        case digitalriver = "DIGITALRIVER"
        case custom = "CUSTOM"
    }
    public enum Status: String, Codable, CaseIterable {
        case inProgress = "IN_PROGRESS"
        case submitted = "SUBMITTED"
        case accepted = "ACCEPTED"
        case completed = "COMPLETED"
        case partiallyRefunded = "PARTIALLY_REFUNDED"
        case refunded = "REFUNDED"
        case rejected = "REJECTED"
        case canceled = "CANCELED"
        case backorderd = "BACKORDERD"
    }
    /** ID of the App creating this Bag */
    public var appId: Int?
    /** Name of app that originated the order. */
    public var appName: String?
    /** App Order ID */
    public var appOrderId: String?
    public var bagId: Int64?
    public var bagStatus: BagStatus?
    /** The channel that originated this order. */
    public var channel: Channel?
    /** The developer commission rate */
    public var commissionRate: Double?
    /** Base currency of cart */
    public var currency: String?
    /** Exchange rate of currency and external currency, if different, at the time the bag was last priced. */
    public var currencyExchangeRate: Double?
    /** Date of creation */
    public var dateCreated: Date?
    /** Discount Total of the bag */
    public var discountTotal: Int?
    public var discounts: Set<BagDiscount>?
    /** If bag is tracked externally */
    public var externalCheckout: Bool?
    /** Currency of cart on external ecommerce platform */
    public var externalCurrency: String?
    /** ID of the Order on the External Ecommerce Platform */
    public var externalId: String?
    /** Financial Status */
    public var financialStatus: FinancialStatus?
    /** Fulfillment Status */
    public var fulfillmentStatus: FulfillmentStatus?
    public var fulfillments: Set<BagFulfillment>?
    public var id: Int64?
    /** ID of the Merchant the Bag references */
    public var merchantId: Int?
    /** Name of Merchant */
    public var merchantName: String?
    /** ID of the Order the Bag belongs to */
    public var orderId: Int64?
    /** The commerce platform used by this merchant. */
    public var platform: Platform?
    /** Date when the bag can no longer be refunded */
    public var remorsePeriodEnds: Date?
    public var shippingMethod: OrderShippingMethod?
    /** Shipping Total of the bag */
    public var shippingTotal: Int?
    /** SKUs added to the bag */
    public var skus: [OrderSku]?
    /** Status */
    public var status: Status?
    /** Subtotal of the bag */
    public var subTotal: Int?
    /** Tax Total of the bag */
    public var taxTotal: Int?
    /** Taxes applied to the bag */
    public var taxes: [OrderTax]?
    /** Are taxes included in the cart total. */
    public var taxesIncluded: Bool?
    /** Total price of the bag */
    public var total: Int?
    /** Transactions of the bag */
    public var transactions: [Transaction]?
    /** Is this bag going to be placed through wallet-based checkout */
    public var walletBasedCheckout: Bool?

    public init(appId: Int? = nil, appName: String? = nil, appOrderId: String? = nil, bagId: Int64? = nil, bagStatus: BagStatus? = nil, channel: Channel? = nil, commissionRate: Double? = nil, currency: String? = nil, currencyExchangeRate: Double? = nil, dateCreated: Date? = nil, discountTotal: Int? = nil, discounts: Set<BagDiscount>? = nil, externalCheckout: Bool? = nil, externalCurrency: String? = nil, externalId: String? = nil, financialStatus: FinancialStatus? = nil, fulfillmentStatus: FulfillmentStatus? = nil, fulfillments: Set<BagFulfillment>? = nil, id: Int64? = nil, merchantId: Int? = nil, merchantName: String? = nil, orderId: Int64? = nil, platform: Platform? = nil, remorsePeriodEnds: Date? = nil, shippingMethod: OrderShippingMethod? = nil, shippingTotal: Int? = nil, skus: [OrderSku]? = nil, status: Status? = nil, subTotal: Int? = nil, taxTotal: Int? = nil, taxes: [OrderTax]? = nil, taxesIncluded: Bool? = nil, total: Int? = nil, transactions: [Transaction]? = nil, walletBasedCheckout: Bool? = nil) {
        self.appId = appId
        self.appName = appName
        self.appOrderId = appOrderId
        self.bagId = bagId
        self.bagStatus = bagStatus
        self.channel = channel
        self.commissionRate = commissionRate
        self.currency = currency
        self.currencyExchangeRate = currencyExchangeRate
        self.dateCreated = dateCreated
        self.discountTotal = discountTotal
        self.discounts = discounts
        self.externalCheckout = externalCheckout
        self.externalCurrency = externalCurrency
        self.externalId = externalId
        self.financialStatus = financialStatus
        self.fulfillmentStatus = fulfillmentStatus
        self.fulfillments = fulfillments
        self.id = id
        self.merchantId = merchantId
        self.merchantName = merchantName
        self.orderId = orderId
        self.platform = platform
        self.remorsePeriodEnds = remorsePeriodEnds
        self.shippingMethod = shippingMethod
        self.shippingTotal = shippingTotal
        self.skus = skus
        self.status = status
        self.subTotal = subTotal
        self.taxTotal = taxTotal
        self.taxes = taxes
        self.taxesIncluded = taxesIncluded
        self.total = total
        self.transactions = transactions
        self.walletBasedCheckout = walletBasedCheckout
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appId = "app_id"
        case appName = "app_name"
        case appOrderId = "app_order_id"
        case bagId
        case bagStatus
        case channel
        case commissionRate = "commission_rate"
        case currency
        case currencyExchangeRate = "currency_exchange_rate"
        case dateCreated = "date_created"
        case discountTotal = "discount_total"
        case discounts
        case externalCheckout = "external_checkout"
        case externalCurrency = "external_currency"
        case externalId = "external_id"
        case financialStatus = "financial_status"
        case fulfillmentStatus = "fulfillment_status"
        case fulfillments
        case id
        case merchantId = "merchant_id"
        case merchantName = "merchant_name"
        case orderId = "order_id"
        case platform
        case remorsePeriodEnds = "remorse_period_ends"
        case shippingMethod = "shipping_method"
        case shippingTotal = "shipping_total"
        case skus
        case status
        case subTotal = "sub_total"
        case taxTotal = "tax_total"
        case taxes
        case taxesIncluded = "taxes_included"
        case total
        case transactions
        case walletBasedCheckout = "wallet_based_checkout"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(appOrderId, forKey: .appOrderId)
        try container.encodeIfPresent(bagId, forKey: .bagId)
        try container.encodeIfPresent(bagStatus, forKey: .bagStatus)
        try container.encodeIfPresent(channel, forKey: .channel)
        try container.encodeIfPresent(commissionRate, forKey: .commissionRate)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(currencyExchangeRate, forKey: .currencyExchangeRate)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(discountTotal, forKey: .discountTotal)
        try container.encodeIfPresent(discounts, forKey: .discounts)
        try container.encodeIfPresent(externalCheckout, forKey: .externalCheckout)
        try container.encodeIfPresent(externalCurrency, forKey: .externalCurrency)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(financialStatus, forKey: .financialStatus)
        try container.encodeIfPresent(fulfillmentStatus, forKey: .fulfillmentStatus)
        try container.encodeIfPresent(fulfillments, forKey: .fulfillments)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(merchantName, forKey: .merchantName)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(remorsePeriodEnds, forKey: .remorsePeriodEnds)
        try container.encodeIfPresent(shippingMethod, forKey: .shippingMethod)
        try container.encodeIfPresent(shippingTotal, forKey: .shippingTotal)
        try container.encodeIfPresent(skus, forKey: .skus)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(subTotal, forKey: .subTotal)
        try container.encodeIfPresent(taxTotal, forKey: .taxTotal)
        try container.encodeIfPresent(taxes, forKey: .taxes)
        try container.encodeIfPresent(taxesIncluded, forKey: .taxesIncluded)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(transactions, forKey: .transactions)
        try container.encodeIfPresent(walletBasedCheckout, forKey: .walletBasedCheckout)
    }
}

