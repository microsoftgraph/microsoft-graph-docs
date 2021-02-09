---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkforceIntegration workforceIntegration = new WorkforceIntegration();
workforceIntegration.displayName = "displayName-value";
workforceIntegration.apiVersion = 99;
WorkforceIntegrationEncryption encryption = new WorkforceIntegrationEncryption();
encryption.protocol = WorkforceIntegrationEncryptionProtocol.SHARED_SECRET;
encryption.secret = "secret-value";
workforceIntegration.encryption = encryption;
workforceIntegration.isActive = true;
workforceIntegration.url = "url-value";
workforceIntegration.supportedEntities = EnumSet.of(WorkforceIntegrationSupportedEntities.NONE);

graphClient.teamwork().workforceIntegrations("{workforceIntegrationId}")
	.buildRequest()
	.patch(workforceIntegration);

```