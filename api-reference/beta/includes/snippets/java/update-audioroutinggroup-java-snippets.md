---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AudioRoutingGroup AudioRoutingGroup = new AudioRoutingGroup();
AudioRoutingGroup.id = "oneToOne";
AudioRoutingGroup.routingMode = RoutingMode.ONE_TO_ONE;
LinkedList<String> sourcesList = new LinkedList<String>();
sourcesList.add("632899f8-2ea1-4604-8413-27bd2892079f");
AudioRoutingGroup.sources = sourcesList;
LinkedList<String> receiversList = new LinkedList<String>();
receiversList.add("550fae72-d251-43ec-868c-373732c2704f");
receiversList.add("72f988bf-86f1-41af-91ab-2d7cd011db47");
AudioRoutingGroup.receivers = receiversList;

graphClient.app().calls("{id}").audioRoutingGroups("{id}")
	.buildRequest()
	.patch(AudioRoutingGroup);

```