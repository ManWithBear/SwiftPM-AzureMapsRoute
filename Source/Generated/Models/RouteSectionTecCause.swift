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

/// The cause of the traffic event. Can contain mainCauseCode and subCauseCode elements. Can be used to define iconography and descriptions.
public struct RouteSectionTecCause: Codable, Swift.Error {
    // MARK: Properties

    /// The main cause of the traffic event. Contains a value in the tec002:CauseCode table, as defined in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard.
    public let mainCauseCode: Int32?
    /// The subcause of the traffic event. Contains a value in the sub cause table defined by the mainCauseCode, as defined in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard.
    public let subCauseCode: Int32?

    // MARK: Initializers

    /// Initialize a `RouteSectionTecCause` structure.
    /// - Parameters:
    ///   - mainCauseCode: The main cause of the traffic event. Contains a value in the tec002:CauseCode table, as defined in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard.
    ///   - subCauseCode: The subcause of the traffic event. Contains a value in the sub cause table defined by the mainCauseCode, as defined in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard.
    public init(
        mainCauseCode: Int32? = nil, subCauseCode: Int32? = nil
    ) {
        self.mainCauseCode = mainCauseCode
        self.subCauseCode = subCauseCode
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case mainCauseCode = "mainCauseCode"
        case subCauseCode = "subCauseCode"
    }

    /// Initialize a `RouteSectionTecCause` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.mainCauseCode = try? container.decode(Int32.self, forKey: .mainCauseCode)
        self.subCauseCode = try? container.decode(Int32.self, forKey: .subCauseCode)
    }

    /// Encode a `RouteSectionTecCause` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if mainCauseCode != nil { try? container.encode(mainCauseCode, forKey: .mainCauseCode) }
        if subCauseCode != nil { try? container.encode(subCauseCode, forKey: .subCauseCode) }
    }
}
