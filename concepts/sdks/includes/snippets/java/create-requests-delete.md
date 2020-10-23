<!-- markdownlint-disable MD041 -->

```java
// DELETE https://graph.microsoft.com/v1.0/me/messages/{message-id}

final String messageId = "AQMkAGUy...";
final Message message = graphClient.me().messages(messageId)
    .buildRequest()
    .delete();
```
