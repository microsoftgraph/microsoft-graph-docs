---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var quality = new TeleconferenceDeviceQuality
{
	CallChainId = Guid.Parse("0622673d-9f69-49b3-9d4f-5ec64f42ecce"),
	ParticipantId = Guid.Parse("ea078406-b5d4-4d3c-b85e-90103dcec7f6"),
	MediaLegId = Guid.Parse("bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"),
	DeviceName = "TestAgent",
	DeviceDescription = "TestDescription",
	MediaQualityList = new List<TeleconferenceDeviceMediaQuality>()
	{
		new TeleconferenceDeviceAudioQuality
		{
			ChannelIndex = 1,
			MediaDuration = "PT20M",
			NetworkLinkSpeedInBytes = 13000,
			LocalIPAddress = "127.0.0.1",
			LocalPort = 6300,
			RemoteIPAddress = "102.1.1.101",
			RemotePort = 6301,
			InboundPackets = 5500,
			OutboundPackets = 5400,
			AverageInboundPacketLossRateInPercentage = 0.01,
			AverageOutboundPacketLossRateInPercentage = 0.02,
			MaximumInboundPacketLossRateInPercentage = 0.05,
			MaximumOutboundPacketLossRateInPercentage = 0.06,
			AverageInboundRoundTripDelay = "PT0.03S",
			AverageOutboundRoundTripDelay = "PT0.04S",
			MaximumInboundRoundTripDelay = "PT0.13S",
			MaximumOutboundRoundTripDelay = "PT0.14S",
			AverageInboundJitter = "PT0.01S",
			AverageOutboundJitter = "PT0.015S",
			MaximumInboundJitter = "PT0.023S",
			MaximumOutboundJitter = "PT0.024S"
		},
		new TeleconferenceDeviceVideoQuality
		{
			ChannelIndex = 1,
			MediaDuration = "PT20M",
			NetworkLinkSpeedInBytes = 13000,
			LocalIPAddress = "127.0.0.1",
			LocalPort = 6300,
			RemoteIPAddress = "102.1.1.101",
			RemotePort = 6301,
			InboundPackets = 5500,
			OutboundPackets = 5400,
			AverageInboundPacketLossRateInPercentage = 0.01,
			AverageOutboundPacketLossRateInPercentage = 0.02,
			MaximumInboundPacketLossRateInPercentage = 0.05,
			MaximumOutboundPacketLossRateInPercentage = 0.06,
			AverageInboundRoundTripDelay = "PT0.03S",
			AverageOutboundRoundTripDelay = "PT0.04S",
			MaximumInboundRoundTripDelay = "PT0.13S",
			MaximumOutboundRoundTripDelay = "PT0.14S",
			AverageInboundJitter = "PT0.01S",
			AverageOutboundJitter = "PT0.015S",
			MaximumInboundJitter = "PT0.023S",
			MaximumOutboundJitter = "PT0.024S"
		},
		new TeleconferenceDeviceScreenSharingQuality
		{
			ChannelIndex = 1,
			MediaDuration = "PT20M",
			NetworkLinkSpeedInBytes = 13000,
			LocalIPAddress = "127.0.0.1",
			LocalPort = 6300,
			RemoteIPAddress = "102.1.1.101",
			RemotePort = 6301,
			InboundPackets = 5500,
			OutboundPackets = 5400,
			AverageInboundPacketLossRateInPercentage = 0.01,
			AverageOutboundPacketLossRateInPercentage = 0.02,
			MaximumInboundPacketLossRateInPercentage = 0.05,
			MaximumOutboundPacketLossRateInPercentage = 0.06,
			AverageInboundRoundTripDelay = "PT0.03S",
			AverageOutboundRoundTripDelay = "PT0.04S",
			MaximumInboundRoundTripDelay = "PT0.13S",
			MaximumOutboundRoundTripDelay = "PT0.14S",
			AverageInboundJitter = "PT0.01S",
			AverageOutboundJitter = "PT0.015S",
			MaximumInboundJitter = "PT0.023S",
			MaximumOutboundJitter = "PT0.024S"
		}
	}
};

await graphClient.Communications.Calls
	.LogTeleconferenceDeviceQuality(quality)
	.Request()
	.PostAsync();

```