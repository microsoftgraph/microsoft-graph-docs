<!-- markdownlint-disable MD041 -->

```java
//  GET https://graph.microsoft.com/v1.0/users/{user-id}/events

final Event events = graphClient.me().events()
    .buildRequest(new HeaderOption("Prefer","outlook.timezone=\"Pacific Standard Time\""))
    .select("Subject,Body,BodyPreview")
    .get();
```
