#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sectionGroups = await graphClient.Me.Onenote.SectionGroups.SectionGroups.SectionGroups.Request().GetAsync();
*** 

```