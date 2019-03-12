#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var resources = await graphClient.Education.Classes.Classes.Assignments.Assignments.Resources.Resources.Request().GetAsync();
*** 

```