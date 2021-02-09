---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TrustFrameworkKeySet trustFrameworkKeySet = new TrustFrameworkKeySet();
LinkedList<TrustFrameworkKey> keysList = new LinkedList<TrustFrameworkKey>();
TrustFrameworkKey keys = new TrustFrameworkKey();
keys.k = "k-value";
LinkedList<String> x5cList = new LinkedList<String>();
x5cList.add("x5c-value");
keys.x5c = x5cList;
keys.x5t = "x5t-value";
keys.kty = "kty-value";
keys.use = "use-value";
keys.exp = 99L;
keys.nbf = 99L;
keys.kid = "kid-value";
keys.e = "e-value";
keys.n = "n-value";
keys.d = "d-value";
keys.p = "p-value";
keys.q = "q-value";
keys.dp = "dp-value";
keys.dq = "dq-value";
keys.qi = "qi-value";
keysList.add(keys);
trustFrameworkKeySet.keys = keysList;

graphClient.trustFramework().keySets("{id}")
	.buildRequest()
	.put(trustFrameworkKeySet);

```