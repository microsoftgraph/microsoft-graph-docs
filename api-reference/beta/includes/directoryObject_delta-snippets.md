#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryObjects = await graphClient.DirectoryObjects.DirectoryObjects.Request().GetAsync();
*** 

```