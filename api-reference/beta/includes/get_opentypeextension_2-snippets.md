#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var extensions = await graphClient.Groups.Groups.Events.Events.Extensions.Extensions.Request().GetAsync();
*** 

```