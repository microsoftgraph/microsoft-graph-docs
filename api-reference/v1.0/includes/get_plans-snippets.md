#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Me.Planner.Plans.Request().GetAsync();
*** 

```