---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printConnector = {
  displayName: 'ConnectorName',
  fullyQualifiedDomainName: 'CONNECTOR-MACHINE',
  operatingSystem: 'Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555',
  appVersion: '0.19.7338.23496',
  location: {
    latitude: 1.1,
    longitude: 2.2,
    altitudeInMeters: 3
  }
};

await client.api('/print/connectors/{printConnectorId}')
	.update(printConnector);

```