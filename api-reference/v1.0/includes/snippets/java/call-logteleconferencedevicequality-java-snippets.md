---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeleconferenceDeviceQuality quality = new TeleconferenceDeviceQuality();
quality.callChainId = "0622673d-9f69-49b3-9d4f-5ec64f42ecce";
quality.participantId = "ea078406-b5d4-4d3c-b85e-90103dcec7f6";
quality.mediaLegId = "bd9ee398-4b9d-42c7-8b8d-4e8efad9435f";
quality.deviceName = "TestAgent";
quality.deviceDescription = "TestDescription";
LinkedList<TeleconferenceDeviceMediaQuality> mediaQualityListList = new LinkedList<TeleconferenceDeviceMediaQuality>();
TeleconferenceDeviceAudioQuality mediaQualityList = new TeleconferenceDeviceAudioQuality();
mediaQualityList.channelIndex = 1;
mediaQualityList.mediaDuration = "PT20M";
mediaQualityList.networkLinkSpeedInBytes = 13000;
mediaQualityList.localIPAddress = "127.0.0.1";
mediaQualityList.localPort = 6300;
mediaQualityList.remoteIPAddress = "102.1.1.101";
mediaQualityList.remotePort = 6301;
mediaQualityList.inboundPackets = 5500;
mediaQualityList.outboundPackets = 5400;
mediaQualityList.averageInboundPacketLossRateInPercentage = 0.01;
mediaQualityList.averageOutboundPacketLossRateInPercentage = 0.02;
mediaQualityList.maximumInboundPacketLossRateInPercentage = 0.05;
mediaQualityList.maximumOutboundPacketLossRateInPercentage = 0.06;
mediaQualityList.averageInboundRoundTripDelay = "PT0.03S";
mediaQualityList.averageOutboundRoundTripDelay = "PT0.04S";
mediaQualityList.maximumInboundRoundTripDelay = "PT0.13S";
mediaQualityList.maximumOutboundRoundTripDelay = "PT0.14S";
mediaQualityList.averageInboundJitter = "PT0.01S";
mediaQualityList.averageOutboundJitter = "PT0.015S";
mediaQualityList.maximumInboundJitter = "PT0.023S";
mediaQualityList.maximumOutboundJitter = "PT0.024S";
mediaQualityListList.add(mediaQualityList);
TeleconferenceDeviceVideoQuality mediaQualityList1 = new TeleconferenceDeviceVideoQuality();
mediaQualityList1.channelIndex = 1;
mediaQualityList1.mediaDuration = "PT20M";
mediaQualityList1.networkLinkSpeedInBytes = 13000;
mediaQualityList1.localIPAddress = "127.0.0.1";
mediaQualityList1.localPort = 6300;
mediaQualityList1.remoteIPAddress = "102.1.1.101";
mediaQualityList1.remotePort = 6301;
mediaQualityList1.inboundPackets = 5500;
mediaQualityList1.outboundPackets = 5400;
mediaQualityList1.averageInboundPacketLossRateInPercentage = 0.01;
mediaQualityList1.averageOutboundPacketLossRateInPercentage = 0.02;
mediaQualityList1.maximumInboundPacketLossRateInPercentage = 0.05;
mediaQualityList1.maximumOutboundPacketLossRateInPercentage = 0.06;
mediaQualityList1.averageInboundRoundTripDelay = "PT0.03S";
mediaQualityList1.averageOutboundRoundTripDelay = "PT0.04S";
mediaQualityList1.maximumInboundRoundTripDelay = "PT0.13S";
mediaQualityList1.maximumOutboundRoundTripDelay = "PT0.14S";
mediaQualityList1.averageInboundJitter = "PT0.01S";
mediaQualityList1.averageOutboundJitter = "PT0.015S";
mediaQualityList1.maximumInboundJitter = "PT0.023S";
mediaQualityList1.maximumOutboundJitter = "PT0.024S";
mediaQualityListList.add(mediaQualityList1);
TeleconferenceDeviceScreenSharingQuality mediaQualityList2 = new TeleconferenceDeviceScreenSharingQuality();
mediaQualityList2.channelIndex = 1;
mediaQualityList2.mediaDuration = "PT20M";
mediaQualityList2.networkLinkSpeedInBytes = 13000;
mediaQualityList2.localIPAddress = "127.0.0.1";
mediaQualityList2.localPort = 6300;
mediaQualityList2.remoteIPAddress = "102.1.1.101";
mediaQualityList2.remotePort = 6301;
mediaQualityList2.inboundPackets = 5500;
mediaQualityList2.outboundPackets = 5400;
mediaQualityList2.averageInboundPacketLossRateInPercentage = 0.01;
mediaQualityList2.averageOutboundPacketLossRateInPercentage = 0.02;
mediaQualityList2.maximumInboundPacketLossRateInPercentage = 0.05;
mediaQualityList2.maximumOutboundPacketLossRateInPercentage = 0.06;
mediaQualityList2.averageInboundRoundTripDelay = "PT0.03S";
mediaQualityList2.averageOutboundRoundTripDelay = "PT0.04S";
mediaQualityList2.maximumInboundRoundTripDelay = "PT0.13S";
mediaQualityList2.maximumOutboundRoundTripDelay = "PT0.14S";
mediaQualityList2.averageInboundJitter = "PT0.01S";
mediaQualityList2.averageOutboundJitter = "PT0.015S";
mediaQualityList2.maximumInboundJitter = "PT0.023S";
mediaQualityList2.maximumOutboundJitter = "PT0.024S";
mediaQualityListList.add(mediaQualityList2);
quality.mediaQualityList = mediaQualityListList;

graphClient.communications().calls()
	.logTeleconferenceDeviceQuality(quality)
	.buildRequest()
	.post();

```