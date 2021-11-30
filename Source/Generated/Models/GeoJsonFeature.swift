// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// A valid `GeoJSON Feature` object type. Please refer to [RFC 7946](https://tools.ietf.org/html/rfc7946#section-3.2) for details.
public struct GeoJsonFeature: Codable {
    // MARK: Properties

    /// Specifies the `GeoJSON` type. Must be one of the nine valid GeoJSON object types - Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection, Feature and FeatureCollection.
    public let type: GeoJsonObjectType
    /// A valid `GeoJSON` object. Please refer to [RFC 7946](https://tools.ietf.org/html/rfc7946#section-3) for details.
    public let geometry: GeoJsonObject
    /// Properties can contain any additional metadata about the `Feature`. Value can be any JSON object or a JSON null value
    public let properties: AnyObject?
    /// Identifier for the feature.
    public let id: String?
    /// The type of the feature. The value depends on the data model the current feature is part of. Some data models may have an empty value.
    public let featureType: String?

    // MARK: Initializers

    /// Initialize a `GeoJsonFeature` structure.
    /// - Parameters:
    ///   - type: Specifies the `GeoJSON` type. Must be one of the nine valid GeoJSON object types - Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection, Feature and FeatureCollection.
    ///   - geometry: A valid `GeoJSON` object. Please refer to [RFC 7946](https://tools.ietf.org/html/rfc7946#section-3) for details.
    ///   - properties: Properties can contain any additional metadata about the `Feature`. Value can be any JSON object or a JSON null value
    ///   - id: Identifier for the feature.
    ///   - featureType: The type of the feature. The value depends on the data model the current feature is part of. Some data models may have an empty value.
    public init(
        type: GeoJsonObjectType, geometry: GeoJsonObject, properties: AnyObject? = nil, id: String? = nil,
        featureType: String? = nil
    ) {
        self.type = type
        self.geometry = geometry
        self.properties = properties
        self.id = id
        self.featureType = featureType
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case geometry = "geometry"
        case properties = "properties"
        case id = "id"
        case featureType = "featureType"
    }

    /// Initialize a `GeoJsonFeature` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(GeoJsonObjectType.self, forKey: .type)
        self.geometry = try container.decode(GeoJsonObject.self, forKey: .geometry)
        //self.properties = try? container.decode(AnyObject.self, forKey: .properties)
        self.properties = try? container.nestedUnkeyedContainer(forKey: .properties) as AnyObject
        self.id = try? container.decode(String.self, forKey: .id)
        self.featureType = try? container.decode(String.self, forKey: .featureType)
    }

    /// Encode a `GeoJsonFeature` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(geometry, forKey: .geometry)
        //if properties != nil { try? container.encode(properties, forKey: .properties) }
        if id != nil { try? container.encode(id, forKey: .id) }
        if featureType != nil { try? container.encode(featureType, forKey: .featureType) }
    }
}
