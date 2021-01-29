---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPatent itemPatent = new ItemPatent();
itemPatent.description = "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.";
itemPatent.displayName = "Inferring User Intent through browsing behaviors";
itemPatent.isPending = true;
itemPatent.number = "USPTO-3954432633";
itemPatent.webUrl = "https://patents.gov/3954432633";

graphClient.me().profile().patents()
	.buildRequest()
	.post(itemPatent);

```