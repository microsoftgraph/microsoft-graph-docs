#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages.Request()
.Filter("MentionsPreview/IsMentioned eq true").Select("subject,sender,receivedDateTime,mentionsPreview").GetAsync();

```