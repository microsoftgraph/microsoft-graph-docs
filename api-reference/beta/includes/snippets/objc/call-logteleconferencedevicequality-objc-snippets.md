---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/communications/calls/logTeleconferenceDeviceQuality"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

MSGraphTeleconferenceDeviceQuality *quality = [[MSGraphTeleconferenceDeviceQuality alloc] init];
[quality setCallChainId:@"0622673d-9f69-49b3-9d4f-5ec64f42ecce"];
[quality setParticipantId:@"ea078406-b5d4-4d3c-b85e-90103dcec7f6"];
[quality setMediaLegId:@"bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"];
[quality setDeviceName:@"TestAgent"];
[quality setDeviceDescription:@"TestDescription"];
NSMutableArray *mediaQualityListList = [[NSMutableArray alloc] init];
MSGraphTeleconferenceDeviceMediaQuality *mediaQualityList = [[MSGraphTeleconferenceDeviceMediaQuality alloc] init];
[mediaQualityList setChannelIndex: 1];
[mediaQualityList setMediaDuration:@"PT20M"];
[mediaQualityList setNetworkLinkSpeedInBytes: 13000];
[mediaQualityList setLocalIPAddress:@"127.0.0.1"];
[mediaQualityList setLocalPort: 6300];
[mediaQualityList setRemoteIPAddress:@"102.1.1.101"];
[mediaQualityList setRemotePort: 6301];
[mediaQualityList setInboundPackets: 5500];
[mediaQualityList setOutboundPackets: 5400];
[mediaQualityList setAverageInboundPacketLossRateInPercentage: 0.01];
[mediaQualityList setAverageOutboundPacketLossRateInPercentage: 0.02];
[mediaQualityList setMaximumInboundPacketLossRateInPercentage: 0.05];
[mediaQualityList setMaximumOutboundPacketLossRateInPercentage: 0.06];
[mediaQualityList setAverageInboundRoundTripDelay:@"PT0.03S"];
[mediaQualityList setAverageOutboundRoundTripDelay:@"PT0.04S"];
[mediaQualityList setMaximumInboundRoundTripDelay:@"PT0.13S"];
[mediaQualityList setMaximumOutboundRoundTripDelay:@"PT0.14S"];
[mediaQualityList setAverageInboundJitter:@"PT0.01S"];
[mediaQualityList setAverageOutboundJitter:@"PT0.015S"];
[mediaQualityList setMaximumInboundJitter:@"PT0.023S"];
[mediaQualityList setMaximumOutboundJitter:@"PT0.024S"];
[mediaQualityListList addObject: mediaQualityList];
MSGraphTeleconferenceDeviceMediaQuality *mediaQualityList = [[MSGraphTeleconferenceDeviceMediaQuality alloc] init];
[mediaQualityList setChannelIndex: 1];
[mediaQualityList setMediaDuration:@"PT20M"];
[mediaQualityList setNetworkLinkSpeedInBytes: 13000];
[mediaQualityList setLocalIPAddress:@"127.0.0.1"];
[mediaQualityList setLocalPort: 6300];
[mediaQualityList setRemoteIPAddress:@"102.1.1.101"];
[mediaQualityList setRemotePort: 6301];
[mediaQualityList setInboundPackets: 5500];
[mediaQualityList setOutboundPackets: 5400];
[mediaQualityList setAverageInboundPacketLossRateInPercentage: 0.01];
[mediaQualityList setAverageOutboundPacketLossRateInPercentage: 0.02];
[mediaQualityList setMaximumInboundPacketLossRateInPercentage: 0.05];
[mediaQualityList setMaximumOutboundPacketLossRateInPercentage: 0.06];
[mediaQualityList setAverageInboundRoundTripDelay:@"PT0.03S"];
[mediaQualityList setAverageOutboundRoundTripDelay:@"PT0.04S"];
[mediaQualityList setMaximumInboundRoundTripDelay:@"PT0.13S"];
[mediaQualityList setMaximumOutboundRoundTripDelay:@"PT0.14S"];
[mediaQualityList setAverageInboundJitter:@"PT0.01S"];
[mediaQualityList setAverageOutboundJitter:@"PT0.015S"];
[mediaQualityList setMaximumInboundJitter:@"PT0.023S"];
[mediaQualityList setMaximumOutboundJitter:@"PT0.024S"];
[mediaQualityListList addObject: mediaQualityList];
MSGraphTeleconferenceDeviceMediaQuality *mediaQualityList = [[MSGraphTeleconferenceDeviceMediaQuality alloc] init];
[mediaQualityList setChannelIndex: 1];
[mediaQualityList setMediaDuration:@"PT20M"];
[mediaQualityList setNetworkLinkSpeedInBytes: 13000];
[mediaQualityList setLocalIPAddress:@"127.0.0.1"];
[mediaQualityList setLocalPort: 6300];
[mediaQualityList setRemoteIPAddress:@"102.1.1.101"];
[mediaQualityList setRemotePort: 6301];
[mediaQualityList setInboundPackets: 5500];
[mediaQualityList setOutboundPackets: 5400];
[mediaQualityList setAverageInboundPacketLossRateInPercentage: 0.01];
[mediaQualityList setAverageOutboundPacketLossRateInPercentage: 0.02];
[mediaQualityList setMaximumInboundPacketLossRateInPercentage: 0.05];
[mediaQualityList setMaximumOutboundPacketLossRateInPercentage: 0.06];
[mediaQualityList setAverageInboundRoundTripDelay:@"PT0.03S"];
[mediaQualityList setAverageOutboundRoundTripDelay:@"PT0.04S"];
[mediaQualityList setMaximumInboundRoundTripDelay:@"PT0.13S"];
[mediaQualityList setMaximumOutboundRoundTripDelay:@"PT0.14S"];
[mediaQualityList setAverageInboundJitter:@"PT0.01S"];
[mediaQualityList setAverageOutboundJitter:@"PT0.015S"];
[mediaQualityList setMaximumInboundJitter:@"PT0.023S"];
[mediaQualityList setMaximumOutboundJitter:@"PT0.024S"];
[mediaQualityListList addObject: mediaQualityList];
[quality setMediaQualityList:mediaQualityListList];
payloadDictionary[@"quality"] = quality;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```