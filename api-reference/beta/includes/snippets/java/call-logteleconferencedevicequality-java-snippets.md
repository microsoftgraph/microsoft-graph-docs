---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeleconferenceDeviceQuality quality = new TeleconferenceDeviceQuality();
quality.callChainId = UUID.fromString("0622673d-9f69-49b3-9d4f-5ec64f42ecce");
quality.participantId = UUID.fromString("ea078406-b5d4-4d3c-b85e-90103dcec7f6");
quality.mediaLegId = UUID.fromString("bd9ee398-4b9d-42c7-8b8d-4e8efad9435f");
quality.deviceName = "TestAgent";
quality.deviceDescription = "TestDescription";
LinkedList<TeleconferenceDeviceMediaQuality> mediaQualityListList = new LinkedList<TeleconferenceDeviceMediaQuality>();
TeleconferenceDeviceAudioQuality mediaQualityList = new TeleconferenceDeviceAudioQuality();
mediaQualityList.channelIndex = 1;
mediaQualityList.mediaDuration = DatatypeFactory.newInstance().newDuration("PT20M");
mediaQualityList.networkLinkSpeedInBytes = 13000L;
mediaQualityList.localIPAddress = "127.0.0.1";
mediaQualityList.localPort = 6300;
mediaQualityList.remoteIPAddress = "102.1.1.101";
mediaQualityList.remotePort = 6301;
mediaQualityList.inboundPackets = 5500L;
mediaQualityList.outboundPackets = 5400L;
mediaQualityList.averageInboundPacketLossRateInPercentage = 0.01d;
mediaQualityList.averageOutboundPacketLossRateInPercentage = 0.02d;
mediaQualityList.maximumInboundPacketLossRateInPercentage = 0.05d;
mediaQualityList.maximumOutboundPacketLossRateInPercentage = 0.06d;
mediaQualityList.averageInboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.03S");
mediaQualityList.averageOutboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.04S");
mediaQualityList.maximumInboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.13S");
mediaQualityList.maximumOutboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.14S");
mediaQualityList.averageInboundJitter = DatatypeFactory.newInstance().newDuration("PT0.01S");
mediaQualityList.averageOutboundJitter = DatatypeFactory.newInstance().newDuration("PT0.015S");
mediaQualityList.maximumInboundJitter = DatatypeFactory.newInstance().newDuration("PT0.023S");
mediaQualityList.maximumOutboundJitter = DatatypeFactory.newInstance().newDuration("PT0.024S");
mediaQualityListList.add(mediaQualityList);
TeleconferenceDeviceVideoQuality mediaQualityList1 = new TeleconferenceDeviceVideoQuality();
mediaQualityList1.channelIndex = 1;
mediaQualityList1.mediaDuration = DatatypeFactory.newInstance().newDuration("PT20M");
mediaQualityList1.networkLinkSpeedInBytes = 13000L;
mediaQualityList1.localIPAddress = "127.0.0.1";
mediaQualityList1.localPort = 6300;
mediaQualityList1.remoteIPAddress = "102.1.1.101";
mediaQualityList1.remotePort = 6301;
mediaQualityList1.inboundPackets = 5500L;
mediaQualityList1.outboundPackets = 5400L;
mediaQualityList1.averageInboundPacketLossRateInPercentage = 0.01d;
mediaQualityList1.averageOutboundPacketLossRateInPercentage = 0.02d;
mediaQualityList1.maximumInboundPacketLossRateInPercentage = 0.05d;
mediaQualityList1.maximumOutboundPacketLossRateInPercentage = 0.06d;
mediaQualityList1.averageInboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.03S");
mediaQualityList1.averageOutboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.04S");
mediaQualityList1.maximumInboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.13S");
mediaQualityList1.maximumOutboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.14S");
mediaQualityList1.averageInboundJitter = DatatypeFactory.newInstance().newDuration("PT0.01S");
mediaQualityList1.averageOutboundJitter = DatatypeFactory.newInstance().newDuration("PT0.015S");
mediaQualityList1.maximumInboundJitter = DatatypeFactory.newInstance().newDuration("PT0.023S");
mediaQualityList1.maximumOutboundJitter = DatatypeFactory.newInstance().newDuration("PT0.024S");
mediaQualityListList.add(mediaQualityList1);
TeleconferenceDeviceScreenSharingQuality mediaQualityList2 = new TeleconferenceDeviceScreenSharingQuality();
mediaQualityList2.channelIndex = 1;
mediaQualityList2.mediaDuration = DatatypeFactory.newInstance().newDuration("PT20M");
mediaQualityList2.networkLinkSpeedInBytes = 13000L;
mediaQualityList2.localIPAddress = "127.0.0.1";
mediaQualityList2.localPort = 6300;
mediaQualityList2.remoteIPAddress = "102.1.1.101";
mediaQualityList2.remotePort = 6301;
mediaQualityList2.inboundPackets = 5500L;
mediaQualityList2.outboundPackets = 5400L;
mediaQualityList2.averageInboundPacketLossRateInPercentage = 0.01d;
mediaQualityList2.averageOutboundPacketLossRateInPercentage = 0.02d;
mediaQualityList2.maximumInboundPacketLossRateInPercentage = 0.05d;
mediaQualityList2.maximumOutboundPacketLossRateInPercentage = 0.06d;
mediaQualityList2.averageInboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.03S");
mediaQualityList2.averageOutboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.04S");
mediaQualityList2.maximumInboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.13S");
mediaQualityList2.maximumOutboundRoundTripDelay = DatatypeFactory.newInstance().newDuration("PT0.14S");
mediaQualityList2.averageInboundJitter = DatatypeFactory.newInstance().newDuration("PT0.01S");
mediaQualityList2.averageOutboundJitter = DatatypeFactory.newInstance().newDuration("PT0.015S");
mediaQualityList2.maximumInboundJitter = DatatypeFactory.newInstance().newDuration("PT0.023S");
mediaQualityList2.maximumOutboundJitter = DatatypeFactory.newInstance().newDuration("PT0.024S");
mediaQualityListList.add(mediaQualityList2);
quality.mediaQualityList = mediaQualityListList;

graphClient.communications().calls()
	.logTeleconferenceDeviceQuality(quality)
	.buildRequest()
	.post();

```