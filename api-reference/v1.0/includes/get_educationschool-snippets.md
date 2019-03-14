#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schools = await graphClient.Education.Schools["{school-id}"].Request().GetAsync();

```