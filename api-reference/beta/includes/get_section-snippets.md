#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sections = await graphClient.Me.Onenote.Sections.Sections.Request().GetAsync();

```