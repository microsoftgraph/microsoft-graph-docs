#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var audioRoutingGroups = await graphClient.App.Calls.Calls.AudioRoutingGroups.Request().GetAsync();
*** 

```