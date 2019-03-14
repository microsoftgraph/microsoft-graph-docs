#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sectionGroups = await graphClient.Me.Onenote.SectionGroups["{id}"].Request().GetAsync();

```