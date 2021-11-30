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

/// User-configurable options for the `RequestRouteMatrix` operation.
public struct RequestRouteMatrixOptions: RequestOptions {
    /// Boolean to indicate whether to execute the request synchronously. If set to true, user will get a 200 response if the request is finished under 120 seconds. Otherwise, user will get a 202 response right away. Please refer to the API description for more details on 202 response. **Supported only for async request**.
    public let waitForResults: Bool?
    /// Specifies whether to return additional travel times using different types of traffic information (none, historic, live) as well as the default best-estimate travel time.
    public let computeTravelTime: ComputeTravelTime?
    /// Specifies which of the section types is reported in the route response. <br><br>For example if sectionType = pedestrian the sections which are suited for pedestrians only are returned. Multiple types can be used. The default sectionType refers to the travelMode input. By default travelMode is set to car
    public let filterSectionType: SectionType?
    /// The date and time of arrival at the destination point. It must be specified as a dateTime. When a time zone offset is not specified it will be assumed to be that of the destination point. The arriveAt value must be in the future. The arriveAt parameter cannot be used in conjunction with departAt, minDeviationDistance or minDeviationTime.
    public let arriveAt: Iso8601Date?
    /// The date and time of departure from the origin point. Departure times apart from now must be specified as a dateTime. When a time zone offset is not specified, it will be assumed to be that of the origin point. The departAt value must be in the future in the date-time format (1996-12-19T16:39:57-08:00).
    public let departAt: Iso8601Date?
    /// Weight per axle of the vehicle in kg. A value of 0 means that weight restrictions per axle are not considered.
    public let vehicleAxleWeight: Int32?
    /// Length of the vehicle in meters. A value of 0 means that length restrictions are not considered.
    public let vehicleLength: Double?
    /// Height of the vehicle in meters. A value of 0 means that height restrictions are not considered.
    public let vehicleHeight: Double?
    /// Width of the vehicle in meters. A value of 0 means that width restrictions are not considered.
    public let vehicleWidth: Double?
    /// Maximum speed of the vehicle in km/hour. The max speed in the vehicle profile is used to check whether a vehicle is allowed on motorways.
    /// * A value of 0 means that an appropriate value for the vehicle will be determined and applied during route planning.
    /// * A non-zero value may be overridden during route planning. For example, the current traffic flow is 60 km/hour. If the vehicle  maximum speed is set to 50 km/hour, the routing engine will consider 60 km/hour as this is the current situation.  If the maximum speed of the vehicle is provided as 80 km/hour but the current traffic flow is 60 km/hour, then routing engine will again use 60 km/hour.
    public let vehicleMaxSpeed: Int32?
    /// Weight of the vehicle in kilograms.
    public let vehicleWeight: Int32?
    /// Level of turns for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    public let windingness: WindingnessLevel?
    /// Degree of hilliness for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    public let inclineLevel: InclineLevel?
    /// The mode of travel for the requested route. If not defined, default is 'car'. Note that the requested travelMode may not be available for the entire route. Where the requested travelMode is not available for a particular section, the travelMode element of the response for that section will be "other". Note that travel modes bus, motorcycle, taxi and van are BETA functionality. Full restriction data is not available in all areas. In **calculateReachableRange** requests, the values bicycle and pedestrian must not be used.
    public let travelMode: TravelMode?
    /// Specifies something that the route calculation should try to avoid when determining the route. Can be specified multiple times in one request, for example, '&avoid=motorways&avoid=tollRoads&avoid=ferries'. In calculateReachableRange requests, the value alreadyUsedRoads must not be used.
    public let avoid: [RouteAvoidType]?
    /// Possible values:
    ///   * true - Do consider all available traffic information during routing
    ///   * false - Ignore current traffic data during routing. Note that although the current traffic data is ignored
    ///   during routing, the effect of historic traffic on effective road speeds is still incorporated.
    public let useTrafficData: Bool?
    /// The type of route requested.
    public let routeType: RouteType?
    /// Types of cargo that may be classified as hazardous materials and restricted from some roads. Available vehicleLoadType values are US Hazmat classes 1 through 9, plus generic classifications for use in other countries. Values beginning with USHazmat are for US routing while otherHazmat should be used for all other countries. vehicleLoadType can be specified multiple times. This parameter is currently only considered for travelMode=truck.
    public let vehicleLoadType: VehicleLoadType?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    public let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    public let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    public var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    public var context: PipelineContext?

    /// Initialize a `RequestRouteMatrixOptions` structure.
    /// - Parameters:
    ///   - waitForResults: Boolean to indicate whether to execute the request synchronously. If set to true, user will get a 200 response if the request is finished under 120 seconds. Otherwise, user will get a 202 response right away. Please refer to the API description for more details on 202 response. **Supported only for async request**.
    ///   - computeTravelTime: Specifies whether to return additional travel times using different types of traffic information (none, historic, live) as well as the default best-estimate travel time.
    ///   - filterSectionType: Specifies which of the section types is reported in the route response. <br><br>For example if sectionType = pedestrian the sections which are suited for pedestrians only are returned. Multiple types can be used. The default sectionType refers to the travelMode input. By default travelMode is set to car
    ///   - arriveAt: The date and time of arrival at the destination point. It must be specified as a dateTime. When a time zone offset is not specified it will be assumed to be that of the destination point. The arriveAt value must be in the future. The arriveAt parameter cannot be used in conjunction with departAt, minDeviationDistance or minDeviationTime.
    ///   - departAt: The date and time of departure from the origin point. Departure times apart from now must be specified as a dateTime. When a time zone offset is not specified, it will be assumed to be that of the origin point. The departAt value must be in the future in the date-time format (1996-12-19T16:39:57-08:00).
    ///   - vehicleAxleWeight: Weight per axle of the vehicle in kg. A value of 0 means that weight restrictions per axle are not considered.
    ///   - vehicleLength: Length of the vehicle in meters. A value of 0 means that length restrictions are not considered.
    ///   - vehicleHeight: Height of the vehicle in meters. A value of 0 means that height restrictions are not considered.
    ///   - vehicleWidth: Width of the vehicle in meters. A value of 0 means that width restrictions are not considered.
    ///   - vehicleMaxSpeed: Maximum speed of the vehicle in km/hour. The max speed in the vehicle profile is used to check whether a vehicle is allowed on motorways.
    /// * A value of 0 means that an appropriate value for the vehicle will be determined and applied during route planning.
    /// * A non-zero value may be overridden during route planning. For example, the current traffic flow is 60 km/hour. If the vehicle  maximum speed is set to 50 km/hour, the routing engine will consider 60 km/hour as this is the current situation.  If the maximum speed of the vehicle is provided as 80 km/hour but the current traffic flow is 60 km/hour, then routing engine will again use 60 km/hour.
    ///   - vehicleWeight: Weight of the vehicle in kilograms.
    ///   - windingness: Level of turns for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    ///   - inclineLevel: Degree of hilliness for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    ///   - travelMode: The mode of travel for the requested route. If not defined, default is 'car'. Note that the requested travelMode may not be available for the entire route. Where the requested travelMode is not available for a particular section, the travelMode element of the response for that section will be "other". Note that travel modes bus, motorcycle, taxi and van are BETA functionality. Full restriction data is not available in all areas. In **calculateReachableRange** requests, the values bicycle and pedestrian must not be used.
    ///   - avoid: Specifies something that the route calculation should try to avoid when determining the route. Can be specified multiple times in one request, for example, '&avoid=motorways&avoid=tollRoads&avoid=ferries'. In calculateReachableRange requests, the value alreadyUsedRoads must not be used.
    ///   - useTrafficData: Possible values:
    ///   * true - Do consider all available traffic information during routing
    ///   * false - Ignore current traffic data during routing. Note that although the current traffic data is ignored
    ///   during routing, the effect of historic traffic on effective road speeds is still incorporated.
    ///   - routeType: The type of route requested.
    ///   - vehicleLoadType: Types of cargo that may be classified as hazardous materials and restricted from some roads. Available vehicleLoadType values are US Hazmat classes 1 through 9, plus generic classifications for use in other countries. Values beginning with USHazmat are for US routing while otherHazmat should be used for all other countries. vehicleLoadType can be specified multiple times. This parameter is currently only considered for travelMode=truck.
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    public init(
        waitForResults: Bool? = nil,
        computeTravelTime: ComputeTravelTime? = nil,
        filterSectionType: SectionType? = nil,
        arriveAt: Iso8601Date? = nil,
        departAt: Iso8601Date? = nil,
        vehicleAxleWeight: Int32? = nil,
        vehicleLength: Double? = nil,
        vehicleHeight: Double? = nil,
        vehicleWidth: Double? = nil,
        vehicleMaxSpeed: Int32? = nil,
        vehicleWeight: Int32? = nil,
        windingness: WindingnessLevel? = nil,
        inclineLevel: InclineLevel? = nil,
        travelMode: TravelMode? = nil,
        avoid: [RouteAvoidType]? = nil,
        useTrafficData: Bool? = nil,
        routeType: RouteType? = nil,
        vehicleLoadType: VehicleLoadType? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.waitForResults = waitForResults
        self.computeTravelTime = computeTravelTime
        self.filterSectionType = filterSectionType
        self.arriveAt = arriveAt
        self.departAt = departAt
        self.vehicleAxleWeight = vehicleAxleWeight
        self.vehicleLength = vehicleLength
        self.vehicleHeight = vehicleHeight
        self.vehicleWidth = vehicleWidth
        self.vehicleMaxSpeed = vehicleMaxSpeed
        self.vehicleWeight = vehicleWeight
        self.windingness = windingness
        self.inclineLevel = inclineLevel
        self.travelMode = travelMode
        self.avoid = avoid
        self.useTrafficData = useTrafficData
        self.routeType = routeType
        self.vehicleLoadType = vehicleLoadType
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
