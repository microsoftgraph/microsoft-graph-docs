#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var people = await graphClient.Me.People.Request().GetAsync();
*** 

```