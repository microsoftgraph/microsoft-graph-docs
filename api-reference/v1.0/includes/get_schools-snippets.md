#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schools = await graphClient.Education.Me.Schools.Request().GetAsync();

```