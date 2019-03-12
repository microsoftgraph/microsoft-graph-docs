#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var details = await graphClient.Planner.Tasks.Tasks.Details.Request().GetAsync();
*** 

```