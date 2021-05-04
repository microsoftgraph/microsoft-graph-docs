---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Tag tag = new Tag();
tag.displayName = "Privileged";
tag.description = "The document is privileged";
tag.additionalDataManager().put("parent@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3"));

graphClient.compliance().ediscovery().cases("47746044-fd0b-4a30-acfc-5272b691ba5b").tags()
	.buildRequest()
	.post(tag);

```