#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Planner.Plans.Plans.Request().GetAsync();
*** 

```