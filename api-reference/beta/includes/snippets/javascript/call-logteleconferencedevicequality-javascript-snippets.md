---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const logTeleconferenceDeviceQuality = {
  quality: {
    '@odata.type': '#microsoft.graph.teleconferenceDeviceQuality',
    callChainId: '0622673d-9f69-49b3-9d4f-5ec64f42ecce',
    participantId: 'ea078406-b5d4-4d3c-b85e-90103dcec7f6',
    mediaLegId: 'bd9ee398-4b9d-42c7-8b8d-4e8efad9435f',
    deviceName: 'TestAgent',
    deviceDescription: 'TestDescription',
    mediaQualityList: [
      {
        '@odata.type': '#microsoft.graph.teleconferenceDeviceAudioQuality',
        channelIndex: 1,
        mediaDuration: 'PT20M',
        networkLinkSpeedInBytes: 13000,
        localIPAddress: '127.0.0.1',
        localPort: 6300,
        remoteIPAddress: '102.1.1.101',
        remotePort: 6301,
        inboundPackets: 5500,
        outboundPackets: 5400,
        averageInboundPacketLossRateInPercentage: 0.01,
        averageOutboundPacketLossRateInPercentage: 0.02,
        maximumInboundPacketLossRateInPercentage: 0.05,
        maximumOutboundPacketLossRateInPercentage: 0.06,
        averageInboundRoundTripDelay: 'PT0.03S',
        averageOutboundRoundTripDelay: 'PT0.04S',
        maximumInboundRoundTripDelay: 'PT0.13S',
        maximumOutboundRoundTripDelay: 'PT0.14S',
        averageInboundJitter: 'PT0.01S',
        averageOutboundJitter: 'PT0.015S',
        maximumInboundJitter: 'PT0.023S',
        maximumOutboundJitter: 'PT0.024S'
      },
      {
        '@odata.type': '#microsoft.graph.teleconferenceDeviceVideoQuality',
        channelIndex: 1,
        mediaDuration: 'PT20M',
        networkLinkSpeedInBytes: 13000,
        localIPAddress: '127.0.0.1',
        localPort: 6300,
        remoteIPAddress: '102.1.1.101',
        remotePort: 6301,
        inboundPackets: 5500,
        outboundPackets: 5400,
        averageInboundPacketLossRateInPercentage: 0.01,
        averageOutboundPacketLossRateInPercentage: 0.02,
        maximumInboundPacketLossRateInPercentage: 0.05,
        maximumOutboundPacketLossRateInPercentage: 0.06,
        averageInboundRoundTripDelay: 'PT0.03S',
        averageOutboundRoundTripDelay: 'PT0.04S',
        maximumInboundRoundTripDelay: 'PT0.13S',
        maximumOutboundRoundTripDelay: 'PT0.14S',
        averageInboundJitter: 'PT0.01S',
        averageOutboundJitter: 'PT0.015S',
        maximumInboundJitter: 'PT0.023S',
        maximumOutboundJitter: 'PT0.024S'
      },
      {
        '@odata.type': '#microsoft.graph.teleconferenceDeviceScreenSharingQuality',
        channelIndex: 1,
        mediaDuration: 'PT20M',
        networkLinkSpeedInBytes: 13000,
        localIPAddress: '127.0.0.1',
        localPort: 6300,
        remoteIPAddress: '102.1.1.101',
        remotePort: 6301,
        inboundPackets: 5500,
        outboundPackets: 5400,
        averageInboundPacketLossRateInPercentage: 0.01,
        averageOutboundPacketLossRateInPercentage: 0.02,
        maximumInboundPacketLossRateInPercentage: 0.05,
        maximumOutboundPacketLossRateInPercentage: 0.06,
        averageInboundRoundTripDelay: 'PT0.03S',
        averageOutboundRoundTripDelay: 'PT0.04S',
        maximumInboundRoundTripDelay: 'PT0.13S',
        maximumOutboundRoundTripDelay: 'PT0.14S',
        averageInboundJitter: 'PT0.01S',
        averageOutboundJitter: 'PT0.015S',
        maximumInboundJitter: 'PT0.023S',
        maximumOutboundJitter: 'PT0.024S'
      }
    ]
  }
};

await client.api('/communications/calls/logTeleconferenceDeviceQuality')
	.version('beta')
	.post(logTeleconferenceDeviceQuality);

```