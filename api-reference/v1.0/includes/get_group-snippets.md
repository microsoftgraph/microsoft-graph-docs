#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups["b320ee12-b1cd-4cca-b648-a437be61c5cd"].Request().GetAsync();

```