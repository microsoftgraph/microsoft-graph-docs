#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var teachers = await graphClient.Education.Classes["{class-id}"].Teachers.Request().GetAsync();

```