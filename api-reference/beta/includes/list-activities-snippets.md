#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var activities = await graphClient.Me.Drive.Activities.Request().GetAsync();
*** 

```