---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkTagMember teamworkTagMember = new TeamworkTagMember();
teamworkTagMember.userId = "97f62344-57dc-409c-88ad-c4af14158ff5";

graphClient.teams("53c53217-fe77-4383-bc5a-ed4937a1aecd").tags("MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==").members()
	.buildRequest()
	.post(teamworkTagMember);

```