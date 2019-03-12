#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var activities = await graphClient.Me.Activities.Activities.Request().GetAsync();
*** 

```