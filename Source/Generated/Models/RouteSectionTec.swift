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

/// Details of the traffic event, using definitions in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard. Can contain effectCode and causes elements.
public struct RouteSectionTec: Codable, Swift.Error {
    // MARK: Properties

    /// The effect on the traffic flow. Contains a value in the tec001:EffectCode table, as defined in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard. Can be used to color-code traffic events according to severity.
    public let effectCode: Int32?
    /// Causes array
    public let causes: [RouteSectionTecCause]?

    // MARK: Initializers

    /// Initialize a `RouteSectionTec` structure.
    /// - Parameters:
    ///   - effectCode: The effect on the traffic flow. Contains a value in the tec001:EffectCode table, as defined in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard. Can be used to color-code traffic events according to severity.
    ///   - causes: Causes array
    public init(
        effectCode: Int32? = nil, causes: [RouteSectionTecCause]? = nil
    ) {
        self.effectCode = effectCode
        self.causes = causes
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case effectCode = "effectCode"
        case causes = "causes"
    }

    /// Initialize a `RouteSectionTec` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.effectCode = try? container.decode(Int32.self, forKey: .effectCode)
        self.causes = try? container.decode([RouteSectionTecCause].self, forKey: .causes)
    }

    /// Encode a `RouteSectionTec` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if effectCode != nil { try? container.encode(effectCode, forKey: .effectCode) }
        if causes != nil { try? container.encode(causes, forKey: .causes) }
    }
}
