---
title: "Customize the Microsoft Graph SDK service client"
description: "Provides instructions on how to change the default behavior of the Microsoft Graph SDK service client."
localization_priority: Normal
author: DarrelMiller
---

# Customize the Microsoft Graph SDK service client

The Microsoft Graph SDK client configures a default set of middleware that allows the SDK to communicate with the Microsoft Graph endpoints. This default set is customizable, allowing you to change the behavior of the client. For example, you can insert customized logging, or add a test handler to simulate specific scenarios. You can add and remove middleware components. It is important to note that the order in which middleware components run is significant.

## [C#](#tab/csharp)

```csharp
var handlers = GraphClientFactory.CreateDefaultHandlers(authProvider);

// Remove a default handler
var compressionHandler =
    handlers.Where(h => h is CompressionHandler).FirstOrDefault();
handlers.Remove(compressionHandler);

// Add a new one
// ChaosHandler simulates random server failures
handlers.Add(new ChaosHandler());

var httpClient = GraphClientFactory.Create(handlers);

var customGraphClient = new GraphServiceClient(httpClient);

var messages = await customGraphClient.Me.Messages.Request()
    .Top(100)
    .Select(m => m.Subject)
    .GetAsync();
```

## [TypeScript](#tab/typeScript)

```typescript
// Create a custom auth provider
let authProvider = new SimpleAuthProvider(accessToken);
// Create an authentication handler that uses custom auth provider
let authHandler = new MicrosoftGraph.AuthenticationHandler(authProvider);

// Create a custom logging handler
let loggingHandler = new CustomLoggingHandler();

// Create a standard HTTP message handler
let httpHandler = new MicrosoftGraph.HTTPMessageHandler();

// Use setNext to chain handlers together
// auth -> logging -> http
authHandler.setNext(loggingHandler);
loggingHandler.setNext(httpHandler);

// Pass the first middleware in the chain in the middleWare property
const client = MicrosoftGraph.Client.initWithMiddleware({
  defaultVersion: 'v1.0',
  debugLogging: true,
  middleware: authHandler,
});

let response: PageCollection = await client
  .api('/me/messages?$top=10&$select=sender,subject')
  .get();
```

### SimpleAuthProvider.ts

```typescript
import { AuthenticationProvider } from "@microsoft/microsoft-graph-client";

export default class SimpleAuthProvider implements AuthenticationProvider {
  private accessToken: string;

  constructor(accessToken: string) {
    this.accessToken = accessToken;
  }

  getAccessToken = async (): Promise<string> => {
    return this.accessToken;
  }
}
```

### CustomLoggingHandler.ts

```typescript
import { Context, Middleware } from "@microsoft/microsoft-graph-client";

export default class CustomLoggingHandler implements Middleware {
  private nextMiddleware: any = null;

  execute = async (context: Context): Promise<void> => {
    console.log(`Logging request: ${context.request.toString()}`);
    return await this.nextMiddleware.execute(context);
  }
  setNext = (middleware: Middleware): void => {
    this.nextMiddleware = middleware;
  }
}
```

## [Java](#tab/java)

```java
// you can configure any OkHttpClient option and add interceptors
// Note: com.microsoft.graph:microsoft-graph:2.3 or above is required
// for a complete description of available configuration options https://square.github.io/okhttp/4.x/okhttp/okhttp3/-ok-http-client/-builder/
final OkHttpClient httpClient = HttpClients.createDefault(coreAuthenticationProvider)
                                .newBuilder()
                                .followSslRedirects(false) // sample configuration to apply to client
                                .build();

final IHttpProvider httpProvider = DefaultClientConfig
                          .createWithAuthenticationProvider(authenticationProvider)
                          .getHttpProvider(httpClient);

final IGraphServiceClient graphServiceClient = GraphServiceClient
                .builder()
                .authenticationProvider(authenticationProvider)
                .httpProvider(httpProvider)
                .buildClient();
```

---
