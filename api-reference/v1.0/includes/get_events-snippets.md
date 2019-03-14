#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Me.Events.Request().Select("subject,body,bodyPreview,organizer,attendees,start,end,location").GetAsync();

```