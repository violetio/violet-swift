//
// Sku.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Stock Keeping Unit */
public struct Sku: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case available = "AVAILABLE"
        case unavailable = "UNAVAILABLE"
        case disabledAvailable = "DISABLED_AVAILABLE"
        case disabledUnavailable = "DISABLED_UNAVAILABLE"
        case archived = "ARCHIVED"
        case forDeletion = "FOR_DELETION"
    }
    public enum TaxType: String, Codable, CaseIterable {
        case _default = "DEFAULT"
        case apparel = "APPAREL"
        case service = "SERVICE"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case physical = "PHYSICAL"
        case digital = "DIGITAL"
        case virtual = "VIRTUAL"
    }
    /** Sku Albums */
    public var albums: Set<Album>?
    /** Amazon Standard Identification Number */
    public var asin: String?
    /** The base currency of this SKU */
    public var currency: String?
    /** Date of SKU creation */
    public var dateCreated: Date?
    /** Date of last SKU update */
    public var dateLastModified: Date?
    /** Order to display SKU */
    public var displayOrder: Int?
    /** European Article Number */
    public var ean: String?
    /** ID of the SKU on the External Ecom Platform */
    public var externalId: String?
    /** Global Trade Item Number */
    public var gtin: String?
    public var id: Int64?
    /** Is the Product in Stock */
    public var inStock: Bool?
    /** Is the SKUs inventory tracked */
    public var inventoryTracked: Bool?
    /** International Standard Book Number */
    public var isbn: String?
    /** ID of the Merchant */
    public var merchantId: Int?
    /** Sku Name */
    public var name: String?
    /** ID of the Offer */
    public var offerId: Int64?
    /** The presented currency of this SKU */
    public var presentedCurrency: String?
    /** Quantity Available */
    public var quantityAvailable: Int?
    /** Retail Price of the SKU */
    public var retailPrice: Int?
    /** Sale Price of the SKU */
    public var salePrice: Int?
    public var skuDimensions: SkuDimensions?
    /** SKU Status */
    public var status: Status?
    /** Type of Tax on this SKU */
    public var taxType: TaxType?
    /** Is the product taxable */
    public var taxable: Bool?
    public var type: ModelType?
    /** Universal Product Code */
    public var upc: String?
    /** Variant Values that apply to this SKU */
    public var variantValues: Set<SkuVariantValue>?

    public init(albums: Set<Album>? = nil, asin: String? = nil, currency: String? = nil, dateCreated: Date? = nil, dateLastModified: Date? = nil, displayOrder: Int? = nil, ean: String? = nil, externalId: String? = nil, gtin: String? = nil, id: Int64? = nil, inStock: Bool? = nil, inventoryTracked: Bool? = nil, isbn: String? = nil, merchantId: Int? = nil, name: String? = nil, offerId: Int64? = nil, presentedCurrency: String? = nil, quantityAvailable: Int? = nil, retailPrice: Int? = nil, salePrice: Int? = nil, skuDimensions: SkuDimensions? = nil, status: Status? = nil, taxType: TaxType? = nil, taxable: Bool? = nil, type: ModelType? = nil, upc: String? = nil, variantValues: Set<SkuVariantValue>? = nil) {
        self.albums = albums
        self.asin = asin
        self.currency = currency
        self.dateCreated = dateCreated
        self.dateLastModified = dateLastModified
        self.displayOrder = displayOrder
        self.ean = ean
        self.externalId = externalId
        self.gtin = gtin
        self.id = id
        self.inStock = inStock
        self.inventoryTracked = inventoryTracked
        self.isbn = isbn
        self.merchantId = merchantId
        self.name = name
        self.offerId = offerId
        self.presentedCurrency = presentedCurrency
        self.quantityAvailable = quantityAvailable
        self.retailPrice = retailPrice
        self.salePrice = salePrice
        self.skuDimensions = skuDimensions
        self.status = status
        self.taxType = taxType
        self.taxable = taxable
        self.type = type
        self.upc = upc
        self.variantValues = variantValues
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case albums
        case asin
        case currency
        case dateCreated = "date_created"
        case dateLastModified = "date_last_modified"
        case displayOrder = "display_order"
        case ean
        case externalId = "external_id"
        case gtin
        case id
        case inStock = "in_stock"
        case inventoryTracked = "inventory_tracked"
        case isbn
        case merchantId = "merchant_id"
        case name
        case offerId = "offer_id"
        case presentedCurrency = "presented_currency"
        case quantityAvailable = "quantity_available"
        case retailPrice = "retail_price"
        case salePrice = "sale_price"
        case skuDimensions = "sku_dimensions"
        case status
        case taxType = "tax_type"
        case taxable
        case type
        case upc
        case variantValues = "variant_values"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(albums, forKey: .albums)
        try container.encodeIfPresent(asin, forKey: .asin)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateLastModified, forKey: .dateLastModified)
        try container.encodeIfPresent(displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(ean, forKey: .ean)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(gtin, forKey: .gtin)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(inStock, forKey: .inStock)
        try container.encodeIfPresent(inventoryTracked, forKey: .inventoryTracked)
        try container.encodeIfPresent(isbn, forKey: .isbn)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(offerId, forKey: .offerId)
        try container.encodeIfPresent(presentedCurrency, forKey: .presentedCurrency)
        try container.encodeIfPresent(quantityAvailable, forKey: .quantityAvailable)
        try container.encodeIfPresent(retailPrice, forKey: .retailPrice)
        try container.encodeIfPresent(salePrice, forKey: .salePrice)
        try container.encodeIfPresent(skuDimensions, forKey: .skuDimensions)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(taxType, forKey: .taxType)
        try container.encodeIfPresent(taxable, forKey: .taxable)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(upc, forKey: .upc)
        try container.encodeIfPresent(variantValues, forKey: .variantValues)
    }
}

