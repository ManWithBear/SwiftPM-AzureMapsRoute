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

/// This object is returned from a successful Route Reachable Range call
public struct RouteRangeResult: Codable {
    // MARK: Properties

    /// Format Version property
    public let formatVersion: String?
    /// Reachable Range
    public let reachableRange: RouteRange?
    /// Reports the effective settings used in the current call.
    public let report: RouteReport?

    // MARK: Initializers

    /// Initialize a `RouteRangeResult` structure.
    /// - Parameters:
    ///   - formatVersion: Format Version property
    ///   - reachableRange: Reachable Range
    ///   - report: Reports the effective settings used in the current call.
    public init(
        formatVersion: String? = nil, reachableRange: RouteRange? = nil, report: RouteReport? = nil
    ) {
        self.formatVersion = formatVersion
        self.reachableRange = reachableRange
        self.report = report
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case formatVersion = "formatVersion"
        case reachableRange = "reachableRange"
        case report = "report"
    }

    /// Initialize a `RouteRangeResult` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.formatVersion = try? container.decode(String.self, forKey: .formatVersion)
        self.reachableRange = try? container.decode(RouteRange.self, forKey: .reachableRange)
        self.report = try? container.decode(RouteReport.self, forKey: .report)
    }

    /// Encode a `RouteRangeResult` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if formatVersion != nil { try? container.encode(formatVersion, forKey: .formatVersion) }
        if reachableRange != nil { try? container.encode(reachableRange, forKey: .reachableRange) }
        if report != nil { try? container.encode(report, forKey: .report) }
    }
}
