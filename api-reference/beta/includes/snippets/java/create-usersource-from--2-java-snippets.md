---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSource userSource = new UserSource();
userSource.email = "adelev@contoso.com";
userSource.includedSources = EnumSet.of(SourceType.MAILBOX);

graphClient.compliance().ediscovery().cases("c816dd6f-5af8-40c5-a760-331361e05c60").legalHolds("387566cc-38ae-4e85-ab4b-cd2dd34faa07").userSources()
	.buildRequest()
	.post(userSource);

```