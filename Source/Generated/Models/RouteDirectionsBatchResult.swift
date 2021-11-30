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

/// This object is returned from a successful Route Directions Batch service call.
public struct RouteDirectionsBatchResult: Codable {
    // MARK: Properties

    /// Array containing the batch results.
    public let batchItems: [RouteDirectionsBatchItem]?
    /// Summary of the results for the batch request
    public let batchSummary: BatchSummary?

    // MARK: Initializers

    /// Initialize a `RouteDirectionsBatchResult` structure.
    /// - Parameters:
    ///   - batchItems: Array containing the batch results.
    ///   - batchSummary: Summary of the results for the batch request
    public init(
        batchItems: [RouteDirectionsBatchItem]? = nil, batchSummary: BatchSummary? = nil
    ) {
        self.batchItems = batchItems
        self.batchSummary = batchSummary
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case batchItems = "batchItems"
        case batchSummary = "summary"
    }

    /// Initialize a `RouteDirectionsBatchResult` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.batchItems = try? container.decode([RouteDirectionsBatchItem].self, forKey: .batchItems)
        self.batchSummary = try? container.decode(BatchSummary.self, forKey: .batchSummary)
    }

    /// Encode a `RouteDirectionsBatchResult` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if batchItems != nil { try? container.encode(batchItems, forKey: .batchItems) }
        if batchSummary != nil { try? container.encode(batchSummary, forKey: .batchSummary) }
    }
}