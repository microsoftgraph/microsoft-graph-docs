---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var supportedTimeZones = await graphClient.Me.Outlook
	.SupportedTimeZones(microsoft.graph.timeZoneStandard'Iana')
	.Request()
	.GetAsync();

```