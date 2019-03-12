#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schools = await graphClient.Education.Schools.Schools.Request().GetAsync();

```