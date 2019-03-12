#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var endpoints = await graphClient.Groups.Groups.Endpoints.Request().GetAsync();
*** 

```