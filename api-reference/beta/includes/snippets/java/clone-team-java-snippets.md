---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Library Assist";

String description = "Self help community for library";

String mailNickname = "libassist";

EnumSet<ClonableTeamParts> partsToClone = EnumSet.of(ClonableTeamParts.APPS,ClonableTeamParts.TABS,ClonableTeamParts.SETTINGS,ClonableTeamParts.CHANNELS,ClonableTeamParts.MEMBERS);

TeamVisibilityType visibility = TeamVisibilityType.PUBLIC;

graphClient.teams("{id}")
	.clone(TeamCloneParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.withDescription(description)
		.withMailNickname(mailNickname)
		.withClassification(null)
		.withVisibility(visibility)
		.withPartsToClone(partsToClone)
		.build())
	.buildRequest()
	.post();

```