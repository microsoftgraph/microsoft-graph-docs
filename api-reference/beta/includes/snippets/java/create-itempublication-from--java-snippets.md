---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPublication itemPublication = new ItemPublication();
itemPublication.description = "One persons journey to the top of the branding management field.";
itemPublication.displayName = "Got Brands? The story of Innocenty Popov and his journey to the top.";
itemPublication.publishedDate = new DateOnly(1900,1,1);
itemPublication.publisher = "International Association of Branding Management Publishing";
itemPublication.thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg";
itemPublication.webUrl = "https://www.iabm.io";

graphClient.me().profile().publications()
	.buildRequest()
	.post(itemPublication);

```