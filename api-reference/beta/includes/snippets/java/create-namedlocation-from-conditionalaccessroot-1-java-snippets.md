---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IpNamedLocation namedLocation = new IpNamedLocation();
namedLocation.displayName = "Untrusted IP named location";
namedLocation.isTrusted = false;
LinkedList<IpRange> ipRangesList = new LinkedList<IpRange>();
IPv4CidrRange ipRanges = new IPv4CidrRange();
ipRanges.cidrAddress = "12.34.221.11/22";
ipRangesList.add(ipRanges);
IPv6CidrRange ipRanges1 = new IPv6CidrRange();
ipRanges1.cidrAddress = "2001:0:9d38:90d6:0:0:0:0/63";
ipRangesList.add(ipRanges1);
namedLocation.ipRanges = ipRangesList;

graphClient.identity().conditionalAccess().namedLocations()
	.buildRequest()
	.post(namedLocation);

```