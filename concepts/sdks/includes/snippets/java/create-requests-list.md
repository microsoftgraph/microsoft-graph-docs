<!-- markdownlint-disable MD041 -->

```java
// GET https://graph.microsoft.com/v1.0/me/messages?$select=subject,sender&$filter=<some condition>&orderBy=receivedDateTime

final IMessageCollectionPage messages = graphClient.me().messages()
    .buildRequest()
    .select("Subject,Sender")
    .filter("<filter condition>")
    .orderBy("receivedDateTime")
    .get();
```
