<!-- markdownlint-disable MD041 -->

```java
// GET https://graph.microsoft.com/v1.0/me

final User user = graphClient.me()
    .buildRequest()
    .get();
```
