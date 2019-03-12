#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sections = await graphClient.Me.Onenote.SectionGroups.SectionGroups.Sections.Request().GetAsync();

```