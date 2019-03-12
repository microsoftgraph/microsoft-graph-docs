#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sectionGroups = await graphClient.Me.Onenote.SectionGroups.SectionGroups.SectionGroups.Request().GetAsync();
*** 

```