---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPublication itemPublication = new ItemPublication();
itemPublication.publisher = "International Association of Branding Management Publishing";
itemPublication.thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg";

graphClient.users("{userId}").profile().publications("{id}")
	.buildRequest()
	.patch(itemPublication);

```