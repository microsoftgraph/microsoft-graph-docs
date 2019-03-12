#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Me.Events.Request().GetAsync();
*** 

```