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

/// The error detail.
public struct ErrorDetail: Codable, Swift.Error {
    // MARK: Properties

    /// The error code.
    public let code: String?
    /// The error message.
    public let message: String?
    /// The error target.
    public let target: String?
    /// The error details.
    public let details: [ErrorDetail]?
    /// The error additional info.
    public let additionalInfo: [ErrorAdditionalInfo]?

    // MARK: Initializers

    /// Initialize a `ErrorDetail` structure.
    /// - Parameters:
    ///   - code: The error code.
    ///   - message: The error message.
    ///   - target: The error target.
    ///   - details: The error details.
    ///   - additionalInfo: The error additional info.
    public init(
        code: String? = nil, message: String? = nil, target: String? = nil, details: [ErrorDetail]? = nil,
        additionalInfo: [ErrorAdditionalInfo]? = nil
    ) {
        self.code = code
        self.message = message
        self.target = target
        self.details = details
        self.additionalInfo = additionalInfo
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case code = "code"
        case message = "message"
        case target = "target"
        case details = "details"
        case additionalInfo = "additionalInfo"
    }

    /// Initialize a `ErrorDetail` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try? container.decode(String.self, forKey: .code)
        self.message = try? container.decode(String.self, forKey: .message)
        self.target = try? container.decode(String.self, forKey: .target)
        self.details = try? container.decode([ErrorDetail].self, forKey: .details)
        self.additionalInfo = try? container.decode([ErrorAdditionalInfo].self, forKey: .additionalInfo)
    }

    /// Encode a `ErrorDetail` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if code != nil { try? container.encode(code, forKey: .code) }
        if message != nil { try? container.encode(message, forKey: .message) }
        if target != nil { try? container.encode(target, forKey: .target) }
        if details != nil { try? container.encode(details, forKey: .details) }
        if additionalInfo != nil { try? container.encode(additionalInfo, forKey: .additionalInfo) }
    }
}
