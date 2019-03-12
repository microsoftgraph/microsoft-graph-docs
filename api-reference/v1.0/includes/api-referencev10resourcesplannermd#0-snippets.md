#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var planner = await graphClient.Planner.Request().GetAsync();
*** 

```