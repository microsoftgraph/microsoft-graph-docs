---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalGroupMember externalGroupMember = new ExternalGroupMember();
externalGroupMember.id = "e811976d-83df-4cbd-8b9b-5215b18aa874";
externalGroupMember.type = ExternalGroupMemberType.USER;
externalGroupMember.identitySource = IdentitySourceType.AZURE_ACTIVE_DIRECTORY;

graphClient.external().connections("contosohr").groups("31bea3d537902000").members()
	.buildRequest()
	.post(externalGroupMember);

```