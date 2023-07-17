//
// PageOffer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PageOffer: Codable, JSONEncodable, Hashable {

    public var content: [Offer]?
    public var empty: Bool?
    public var first: Bool?
    public var last: Bool?
    public var number: Int?
    public var numberOfElements: Int?
    public var pageable: Pageable?
    public var size: Int?
    public var sort: Sort?
    public var totalElements: Int64?
    public var totalPages: Int?

    public init(content: [Offer]? = nil, empty: Bool? = nil, first: Bool? = nil, last: Bool? = nil, number: Int? = nil, numberOfElements: Int? = nil, pageable: Pageable? = nil, size: Int? = nil, sort: Sort? = nil, totalElements: Int64? = nil, totalPages: Int? = nil) {
        self.content = content
        self.empty = empty
        self.first = first
        self.last = last
        self.number = number
        self.numberOfElements = numberOfElements
        self.pageable = pageable
        self.size = size
        self.sort = sort
        self.totalElements = totalElements
        self.totalPages = totalPages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case empty
        case first
        case last
        case number
        case numberOfElements = "number_of_elements"
        case pageable
        case size
        case sort
        case totalElements = "total_elements"
        case totalPages = "total_pages"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(empty, forKey: .empty)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(numberOfElements, forKey: .numberOfElements)
        try container.encodeIfPresent(pageable, forKey: .pageable)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(totalElements, forKey: .totalElements)
        try container.encodeIfPresent(totalPages, forKey: .totalPages)
    }
}

