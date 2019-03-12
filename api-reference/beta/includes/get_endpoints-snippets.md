#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var endpoints = await graphClient.Groups.Groups.Endpoints.Request().GetAsync();
*** 

```