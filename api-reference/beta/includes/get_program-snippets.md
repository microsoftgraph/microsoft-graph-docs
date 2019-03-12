#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var programs = await graphClient.Programs.Request().GetAsync();
*** 

```