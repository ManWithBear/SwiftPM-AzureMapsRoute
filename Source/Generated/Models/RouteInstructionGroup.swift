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

/// Groups a sequence of instruction elements which are related to each other. The sequence range is constrained with firstInstructionIndex and lastInstructionIndex. When human-readable text messages are requested for guidance (instructionType=text or tagged), then the instructionGroup has a summary message returned when available.
public struct RouteInstructionGroup: Codable, Swift.Error {
    // MARK: Properties

    /// Index of the first instruction in the instructions and belonging to this group.
    public let firstInstructionIndex: Int32?
    /// Index of the last instruction in the instructions and belonging to this group.
    public let lastInstructionIndex: Int32?
    /// Length of the group.
    public let groupLengthInMeters: Int32?
    /// Summary message when human-readable text messages are requested for guidance (instructionType=text or tagged).
    public let groupMessage: String?

    // MARK: Initializers

    /// Initialize a `RouteInstructionGroup` structure.
    /// - Parameters:
    ///   - firstInstructionIndex: Index of the first instruction in the instructions and belonging to this group.
    ///   - lastInstructionIndex: Index of the last instruction in the instructions and belonging to this group.
    ///   - groupLengthInMeters: Length of the group.
    ///   - groupMessage: Summary message when human-readable text messages are requested for guidance (instructionType=text or tagged).
    public init(
        firstInstructionIndex: Int32? = nil, lastInstructionIndex: Int32? = nil, groupLengthInMeters: Int32? = nil,
        groupMessage: String? = nil
    ) {
        self.firstInstructionIndex = firstInstructionIndex
        self.lastInstructionIndex = lastInstructionIndex
        self.groupLengthInMeters = groupLengthInMeters
        self.groupMessage = groupMessage
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case firstInstructionIndex = "firstInstructionIndex"
        case lastInstructionIndex = "lastInstructionIndex"
        case groupLengthInMeters = "groupLengthInMeters"
        case groupMessage = "groupMessage"
    }

    /// Initialize a `RouteInstructionGroup` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.firstInstructionIndex = try? container.decode(Int32.self, forKey: .firstInstructionIndex)
        self.lastInstructionIndex = try? container.decode(Int32.self, forKey: .lastInstructionIndex)
        self.groupLengthInMeters = try? container.decode(Int32.self, forKey: .groupLengthInMeters)
        self.groupMessage = try? container.decode(String.self, forKey: .groupMessage)
    }

    /// Encode a `RouteInstructionGroup` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if firstInstructionIndex != nil { try? container.encode(firstInstructionIndex, forKey: .firstInstructionIndex) }
        if lastInstructionIndex != nil { try? container.encode(lastInstructionIndex, forKey: .lastInstructionIndex) }
        if groupLengthInMeters != nil { try? container.encode(groupLengthInMeters, forKey: .groupLengthInMeters) }
        if groupMessage != nil { try? container.encode(groupMessage, forKey: .groupMessage) }
    }
}
