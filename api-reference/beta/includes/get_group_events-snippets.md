#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Groups.Groups.Events.Request().GetAsync();
*** 

```