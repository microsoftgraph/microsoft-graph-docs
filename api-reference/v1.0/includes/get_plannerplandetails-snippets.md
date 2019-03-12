#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var details = await graphClient.Planner.Plans.Plans.Details.Request().GetAsync();
*** 

```