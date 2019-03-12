#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups.Groups.Request().GetAsync();
*** 

```