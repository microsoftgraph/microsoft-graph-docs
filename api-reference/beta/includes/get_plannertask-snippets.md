#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tasks = await graphClient.Planner.Tasks["01gzSlKkIUSUl6DF_EilrmQAKDhh"].Request().GetAsync();

```