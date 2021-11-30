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

/// Summary object for route section.
public struct RouteLegSummary: Codable {
    // MARK: Properties

    /// Length In Meters property
    public let lengthInMeters: Int32?
    /// Estimated travel time in seconds property that includes the delay due to real-time traffic. Note that even when traffic=false travelTimeInSeconds still includes the delay due to traffic. If DepartAt is in the future, travel time is calculated using time-dependent historic traffic data.
    public let travelTimeInSeconds: Int32?
    /// Estimated delay in seconds caused by the real-time incident(s) according to traffic information. For routes planned with departure time in the future, delays is always 0. To return additional travel times using different types of traffic information, parameter computeTravelTimeFor=all needs to be added.
    public let trafficDelayInSeconds: Int32?
    /// The estimated departure time for the route or leg.
    public let departureTime: Iso8601Date?
    /// The estimated arrival time for the route or leg.
    public let arrivalTime: Iso8601Date?
    /// Estimated travel time calculated as if there are no delays on the route due to traffic conditions (e.g. congestion). Included only if computeTravelTimeFor = all is used in the query.
    public let noTrafficTravelTimeInSeconds: Int32?
    /// Estimated travel time calculated using time-dependent historic traffic data. Included only if computeTravelTimeFor = all is used in the query.
    public let historicTrafficTravelTimeInSeconds: Int32?
    /// Estimated travel time calculated using real-time speed data. Included only if computeTravelTimeFor = all is used in the query.
    public let liveTrafficIncidentsTravelTimeInSeconds: Int32?
    /// Estimated fuel consumption in liters using the Combustion Consumption Model. Included if vehicleEngineType is set to _combustion_ and constantSpeedConsumptionInLitersPerHundredkm is specified. The value will be non-negative.
    public let fuelConsumptionInLiters: Double?
    /// Estimated electric energy consumption in kilowatt hours (kWh) using the Electric Consumption Model. Included if vehicleEngineType is set to electric and constantSpeedConsumptionInkWhPerHundredkm is specified. The value of batteryConsumptionInkWh includes the recuperated electric energy and can therefore be negative (which indicates gaining energy). If both maxChargeInkWh and currentChargeInkWh are specified, recuperation will be capped to ensure that the battery charge level never exceeds maxChargeInkWh. If neither maxChargeInkWh nor currentChargeInkWh are specified, unconstrained recuperation is assumed in the consumption calculation.
    public let batteryConsumptionInKwH: Double?

    // MARK: Initializers

    /// Initialize a `RouteLegSummary` structure.
    /// - Parameters:
    ///   - lengthInMeters: Length In Meters property
    ///   - travelTimeInSeconds: Estimated travel time in seconds property that includes the delay due to real-time traffic. Note that even when traffic=false travelTimeInSeconds still includes the delay due to traffic. If DepartAt is in the future, travel time is calculated using time-dependent historic traffic data.
    ///   - trafficDelayInSeconds: Estimated delay in seconds caused by the real-time incident(s) according to traffic information. For routes planned with departure time in the future, delays is always 0. To return additional travel times using different types of traffic information, parameter computeTravelTimeFor=all needs to be added.
    ///   - departureTime: The estimated departure time for the route or leg.
    ///   - arrivalTime: The estimated arrival time for the route or leg.
    ///   - noTrafficTravelTimeInSeconds: Estimated travel time calculated as if there are no delays on the route due to traffic conditions (e.g. congestion). Included only if computeTravelTimeFor = all is used in the query.
    ///   - historicTrafficTravelTimeInSeconds: Estimated travel time calculated using time-dependent historic traffic data. Included only if computeTravelTimeFor = all is used in the query.
    ///   - liveTrafficIncidentsTravelTimeInSeconds: Estimated travel time calculated using real-time speed data. Included only if computeTravelTimeFor = all is used in the query.
    ///   - fuelConsumptionInLiters: Estimated fuel consumption in liters using the Combustion Consumption Model. Included if vehicleEngineType is set to _combustion_ and constantSpeedConsumptionInLitersPerHundredkm is specified. The value will be non-negative.
    ///   - batteryConsumptionInKwH: Estimated electric energy consumption in kilowatt hours (kWh) using the Electric Consumption Model. Included if vehicleEngineType is set to electric and constantSpeedConsumptionInkWhPerHundredkm is specified. The value of batteryConsumptionInkWh includes the recuperated electric energy and can therefore be negative (which indicates gaining energy). If both maxChargeInkWh and currentChargeInkWh are specified, recuperation will be capped to ensure that the battery charge level never exceeds maxChargeInkWh. If neither maxChargeInkWh nor currentChargeInkWh are specified, unconstrained recuperation is assumed in the consumption calculation.
    public init(
        lengthInMeters: Int32? = nil, travelTimeInSeconds: Int32? = nil, trafficDelayInSeconds: Int32? = nil,
        departureTime: Iso8601Date? = nil, arrivalTime: Iso8601Date? = nil, noTrafficTravelTimeInSeconds: Int32? = nil,
        historicTrafficTravelTimeInSeconds: Int32? = nil, liveTrafficIncidentsTravelTimeInSeconds: Int32? = nil,
        fuelConsumptionInLiters: Double? = nil, batteryConsumptionInKwH: Double? = nil
    ) {
        self.lengthInMeters = lengthInMeters
        self.travelTimeInSeconds = travelTimeInSeconds
        self.trafficDelayInSeconds = trafficDelayInSeconds
        self.departureTime = departureTime
        self.arrivalTime = arrivalTime
        self.noTrafficTravelTimeInSeconds = noTrafficTravelTimeInSeconds
        self.historicTrafficTravelTimeInSeconds = historicTrafficTravelTimeInSeconds
        self.liveTrafficIncidentsTravelTimeInSeconds = liveTrafficIncidentsTravelTimeInSeconds
        self.fuelConsumptionInLiters = fuelConsumptionInLiters
        self.batteryConsumptionInKwH = batteryConsumptionInKwH
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case lengthInMeters = "lengthInMeters"
        case travelTimeInSeconds = "travelTimeInSeconds"
        case trafficDelayInSeconds = "trafficDelayInSeconds"
        case departureTime = "departureTime"
        case arrivalTime = "arrivalTime"
        case noTrafficTravelTimeInSeconds = "noTrafficTravelTimeInSeconds"
        case historicTrafficTravelTimeInSeconds = "historicTrafficTravelTimeInSeconds"
        case liveTrafficIncidentsTravelTimeInSeconds = "liveTrafficIncidentsTravelTimeInSeconds"
        case fuelConsumptionInLiters = "fuelConsumptionInLiters"
        case batteryConsumptionInKwH = "batteryConsumptionInkWh"
    }

    /// Initialize a `RouteLegSummary` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lengthInMeters = try? container.decode(Int32.self, forKey: .lengthInMeters)
        self.travelTimeInSeconds = try? container.decode(Int32.self, forKey: .travelTimeInSeconds)
        self.trafficDelayInSeconds = try? container.decode(Int32.self, forKey: .trafficDelayInSeconds)
        self.departureTime = try? container.decode(Iso8601Date.self, forKey: .departureTime)
        self.arrivalTime = try? container.decode(Iso8601Date.self, forKey: .arrivalTime)
        self.noTrafficTravelTimeInSeconds = try? container.decode(Int32.self, forKey: .noTrafficTravelTimeInSeconds)
        self.historicTrafficTravelTimeInSeconds = try? container.decode(
            Int32.self,
            forKey: .historicTrafficTravelTimeInSeconds
        )
        self.liveTrafficIncidentsTravelTimeInSeconds = try? container.decode(
            Int32.self,
            forKey: .liveTrafficIncidentsTravelTimeInSeconds
        )
        self.fuelConsumptionInLiters = try? container.decode(Double.self, forKey: .fuelConsumptionInLiters)
        self.batteryConsumptionInKwH = try? container.decode(Double.self, forKey: .batteryConsumptionInKwH)
    }

    /// Encode a `RouteLegSummary` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if lengthInMeters != nil { try? container.encode(lengthInMeters, forKey: .lengthInMeters) }
        if travelTimeInSeconds != nil { try? container.encode(travelTimeInSeconds, forKey: .travelTimeInSeconds) }
        if trafficDelayInSeconds != nil { try? container.encode(trafficDelayInSeconds, forKey: .trafficDelayInSeconds) }
        if departureTime != nil { try? container.encode(departureTime, forKey: .departureTime) }
        if arrivalTime != nil { try? container.encode(arrivalTime, forKey: .arrivalTime) }
        if noTrafficTravelTimeInSeconds !=
            nil { try? container.encode(noTrafficTravelTimeInSeconds, forKey: .noTrafficTravelTimeInSeconds) }
        if historicTrafficTravelTimeInSeconds !=
            nil
        {
            try? container.encode(historicTrafficTravelTimeInSeconds, forKey: .historicTrafficTravelTimeInSeconds)
        }
        if liveTrafficIncidentsTravelTimeInSeconds !=
            nil
        {
            try? container
                .encode(liveTrafficIncidentsTravelTimeInSeconds, forKey: .liveTrafficIncidentsTravelTimeInSeconds)
        }
        if fuelConsumptionInLiters !=
            nil { try? container.encode(fuelConsumptionInLiters, forKey: .fuelConsumptionInLiters) }
        if batteryConsumptionInKwH !=
            nil { try? container.encode(batteryConsumptionInKwH, forKey: .batteryConsumptionInKwH) }
    }
}
