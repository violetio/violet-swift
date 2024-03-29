//
// Offer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Product Offer */
public struct Offer: Codable, JSONEncodable, Hashable {

    public enum PublishingStatus: String, Codable, CaseIterable {
        case notPublished = "NOT_PUBLISHED"
        case published = "PUBLISHED"
    }
    public enum SizeUnit: String, Codable, CaseIterable {
        case millimeters = "MILLIMETERS"
        case centimeters = "CENTIMETERS"
        case inches = "INCHES"
        case feet = "FEET"
        case meters = "METERS"
        case yards = "YARDS"
    }
    public enum Source: String, Codable, CaseIterable {
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
        case available = "AVAILABLE"
        case unavailable = "UNAVAILABLE"
        case disabledAvailable = "DISABLED_AVAILABLE"
        case disabledUnavailable = "DISABLED_UNAVAILABLE"
        case archived = "ARCHIVED"
        case forDeletion = "FOR_DELETION"
    }
    public enum SubscriptionStatus: String, Codable, CaseIterable {
        case notSubscribed = "NOT_SUBSCRIBED"
        case subscribed = "SUBSCRIBED"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case physical = "PHYSICAL"
        case digital = "DIGITAL"
        case virtual = "VIRTUAL"
    }
    public enum WeightUnit: String, Codable, CaseIterable {
        case ounces = "OUNCES"
        case pounds = "POUNDS"
        case grams = "GRAMS"
        case kilograms = "KILOGRAMS"
        case carats = "CARATS"
        case tonnes = "TONNES"
        case milligrams = "MILLIGRAMS"
        case liters = "LITERS"
        case milliliters = "MILLILITERS"
        case quarts = "QUARTS"
        case quarters = "QUARTERS"
        case gallons = "GALLONS"
        case pints = "PINTS"
    }
    /** Product Albums */
    public var albums: Set<Album>?
    /** Is Product Available */
    public var available: Bool?
    /** Amount given by merchant */
    public var commissionRate: Double?
    /** Base Currency of Offer */
    public var currency: String?
    /** Symbol representing the desired currency */
    public var currencySymbol: String?
    /** Date of offer creation */
    public var dateCreated: Date?
    /** Date of last offer update */
    public var dateLastModified: Date?
    /** Product Description */
    public var description: String?
    /** External ID */
    public var externalId: String?
    /** External URL */
    public var externalUrl: String?
    public var id: Int64?
    /** Maximum Price the Product sells for */
    public var maxPrice: Int?
    /** Merchant ID */
    public var merchantId: Int?
    /** Additional Meta Data of the Offer */
    public var meta: Set<Meta>?
    /** Minimum Price the Product sells for */
    public var minPrice: Int?
    /** Name of Product in Offer */
    public var name: String?
    /** The presented currency of this SKU */
    public var presentedCurrency: String?
    /** The parent/container product ID */
    public var productId: String?
    /** Publishing Status */
    public var publishingStatus: PublishingStatus?
    /** Name of Merchant Selling Product */
    public var seller: String?
    /** Size Unit */
    public var sizeUnit: SizeUnit?
    /** Product SKUs */
    public var skus: Set<Sku>?
    /** Source Platform */
    public var source: Source?
    /** Original Category on Source Platform */
    public var sourceCategoryName: String?
    /** Status */
    public var status: Status?
    /** Subscription status */
    public var subscriptionStatus: SubscriptionStatus?
    public var tags: [String]?
    /** Is the product 3D Enabled */
    public var threeDEnables: Bool?
    /** 3D Resource Object */
    public var threeDResource: String?
    /** Product Type */
    public var type: ModelType?
    /** Product Variations */
    public var variants: Set<Variant>?
    /** Name of Original Vendor */
    public var vendor: String?
    /** Is Product Visible */
    public var visible: Bool?
    /** Weight Unit */
    public var weightUnit: WeightUnit?

    public init(albums: Set<Album>? = nil, available: Bool? = nil, commissionRate: Double? = nil, currency: String? = nil, currencySymbol: String? = nil, dateCreated: Date? = nil, dateLastModified: Date? = nil, description: String? = nil, externalId: String? = nil, externalUrl: String? = nil, id: Int64? = nil, maxPrice: Int? = nil, merchantId: Int? = nil, meta: Set<Meta>? = nil, minPrice: Int? = nil, name: String? = nil, presentedCurrency: String? = nil, productId: String? = nil, publishingStatus: PublishingStatus? = nil, seller: String? = nil, sizeUnit: SizeUnit? = nil, skus: Set<Sku>? = nil, source: Source? = nil, sourceCategoryName: String? = nil, status: Status? = nil, subscriptionStatus: SubscriptionStatus? = nil, tags: [String]? = nil, threeDEnables: Bool? = nil, threeDResource: String? = nil, type: ModelType? = nil, variants: Set<Variant>? = nil, vendor: String? = nil, visible: Bool? = nil, weightUnit: WeightUnit? = nil) {
        self.albums = albums
        self.available = available
        self.commissionRate = commissionRate
        self.currency = currency
        self.currencySymbol = currencySymbol
        self.dateCreated = dateCreated
        self.dateLastModified = dateLastModified
        self.description = description
        self.externalId = externalId
        self.externalUrl = externalUrl
        self.id = id
        self.maxPrice = maxPrice
        self.merchantId = merchantId
        self.meta = meta
        self.minPrice = minPrice
        self.name = name
        self.presentedCurrency = presentedCurrency
        self.productId = productId
        self.publishingStatus = publishingStatus
        self.seller = seller
        self.sizeUnit = sizeUnit
        self.skus = skus
        self.source = source
        self.sourceCategoryName = sourceCategoryName
        self.status = status
        self.subscriptionStatus = subscriptionStatus
        self.tags = tags
        self.threeDEnables = threeDEnables
        self.threeDResource = threeDResource
        self.type = type
        self.variants = variants
        self.vendor = vendor
        self.visible = visible
        self.weightUnit = weightUnit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case albums
        case available
        case commissionRate = "commission_rate"
        case currency
        case currencySymbol = "currency_symbol"
        case dateCreated = "date_created"
        case dateLastModified = "date_last_modified"
        case description
        case externalId = "external_id"
        case externalUrl = "external_url"
        case id
        case maxPrice = "max_price"
        case merchantId = "merchant_id"
        case meta
        case minPrice = "min_price"
        case name
        case presentedCurrency = "presented_currency"
        case productId = "product_id"
        case publishingStatus = "publishing_status"
        case seller
        case sizeUnit = "size_unit"
        case skus
        case source
        case sourceCategoryName = "source_category_name"
        case status
        case subscriptionStatus = "subscription_status"
        case tags
        case threeDEnables = "three_d_enables"
        case threeDResource = "three_d_resource"
        case type
        case variants
        case vendor
        case visible
        case weightUnit = "weight_unit"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(albums, forKey: .albums)
        try container.encodeIfPresent(available, forKey: .available)
        try container.encodeIfPresent(commissionRate, forKey: .commissionRate)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateLastModified, forKey: .dateLastModified)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(externalUrl, forKey: .externalUrl)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(maxPrice, forKey: .maxPrice)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(minPrice, forKey: .minPrice)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(presentedCurrency, forKey: .presentedCurrency)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(publishingStatus, forKey: .publishingStatus)
        try container.encodeIfPresent(seller, forKey: .seller)
        try container.encodeIfPresent(sizeUnit, forKey: .sizeUnit)
        try container.encodeIfPresent(skus, forKey: .skus)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(sourceCategoryName, forKey: .sourceCategoryName)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(subscriptionStatus, forKey: .subscriptionStatus)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(threeDEnables, forKey: .threeDEnables)
        try container.encodeIfPresent(threeDResource, forKey: .threeDResource)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(variants, forKey: .variants)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(weightUnit, forKey: .weightUnit)
    }
}

