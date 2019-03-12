#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var applications = await graphClient.Applications.Applications.Request().GetAsync();
*** 

```