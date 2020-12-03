<!-- markdownlint-disable MD041 -->

```java
// GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle

final User user = graphClient.me()
    .buildRequest()
    .select("DisplayName,JobTitle")
    .get();
```
