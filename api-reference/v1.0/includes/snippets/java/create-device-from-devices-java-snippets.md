---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Device device = new Device();
device.accountEnabled = false;
LinkedList<AlternativeSecurityId> alternativeSecurityIdsList = new LinkedList<AlternativeSecurityId>();
AlternativeSecurityId alternativeSecurityIds = new AlternativeSecurityId();
alternativeSecurityIds.type = 2;
alternativeSecurityIds.key = Base64.getDecoder().decode("base64Y3YxN2E1MWFlYw==");
alternativeSecurityIdsList.add(alternativeSecurityIds);
device.alternativeSecurityIds = alternativeSecurityIdsList;
device.deviceId = "4c299165-6e8f-4b45-a5ba-c5d250a707ff";
device.displayName = "Test device";
device.operatingSystem = "linux";
device.operatingSystemVersion = "1";

graphClient.devices()
	.buildRequest()
	.post(device);

```