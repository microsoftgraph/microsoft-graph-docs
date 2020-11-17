---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkforceIntegration workforceIntegrations = new WorkforceIntegration();
workforceIntegrations.displayName = "displayName-value";
workforceIntegrations.apiVersion = 99;
WorkforceIntegrationEncryption encryption = new WorkforceIntegrationEncryption();
encryption.protocol = WorkforceIntegrationEncryptionProtocol.SHARED_SECRET;
encryption.secret = "secret-value";
workforceIntegrations.encryption = encryption;
workforceIntegrations.isActive = true;
workforceIntegrations.url = "url-value";
workforceIntegrations.supports = EnumSet.of(WorkforceIntegrationSupportedEntities.NONE);

graphClient.teamwork().workforceIntegrations()
	.buildRequest()
	.patch(workforceIntegrations);

```