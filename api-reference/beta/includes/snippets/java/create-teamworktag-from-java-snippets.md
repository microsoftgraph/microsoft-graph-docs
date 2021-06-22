---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkTag teamworkTag = new TeamworkTag();
teamworkTag.displayName = "Finance";
LinkedList<TeamworkTagMember> membersList = new LinkedList<TeamworkTagMember>();
TeamworkTagMember members = new TeamworkTagMember();
members.userId = "92f6952f-61ca-4a94-8910-508a240bc167";
membersList.add(members);
TeamworkTagMember members1 = new TeamworkTagMember();
members1.userId = "085d800c-b86b-4bfc-a857-9371ad1caf29";
membersList.add(members1);
TeamworkTagMemberCollectionResponse teamworkTagMemberCollectionResponse = new TeamworkTagMemberCollectionResponse();
teamworkTagMemberCollectionResponse.value = membersList;
TeamworkTagMemberCollectionPage teamworkTagMemberCollectionPage = new TeamworkTagMemberCollectionPage(teamworkTagMemberCollectionResponse, null);
teamworkTag.members = teamworkTagMemberCollectionPage;

graphClient.teams("53c53217-fe77-4383-bc5a-ed4937a1aecd").tags()
	.buildRequest()
	.post(teamworkTag);

```