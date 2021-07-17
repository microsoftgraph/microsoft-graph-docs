---
title: "Consistency levels in Azure AD"
description: "Azure AD directory objects can be queried on session consistency or eventual consistency."
author: "FaithOmbongi"
localization_priority: Normal
---

# Consistency levels and querying on Azure AD directory objects

The Azure AD architecture is geographically distributed to deliver company-wide availability and performance to customers. In this model, there are primary replicas to which all writes are performed, and multiple secondary replicas which service all directory reads. Azure AD and Microsoft Graph always try to maintain the same logical authenticated session tied to one primary and one secondary replica, unless there's a failure and rerouting is necessary to maintain availability. These primary and secondary replicas are always in the datacenters closest to the customer.

## Writes and reads in Azure AD's architecture

Consider an authenticated session tied to primary replica A.O and secondary replica A.1. When an authenticated client makes a read (`GET`) request, the request is fulfilled by the secondary replica to which the logical session is tied to, that is, A.1. This state ensures faster read performance. 

When the same authenticated client makes a write (`POST`, `PUT`, `PATCH`) request, the following happens:
1. The change is written to the primary replica A.0.
2. The change is replicated to a secondary replica to which the logical session's reads were issued, that is, A.1.
3. The change is replicated to other secondary replicas located across different geographies.
4. An index that Microsoft Graph uses to fulfill query requests is updated.

When the data is available across all replicas, this is a state of mutual data consistency.

For more information about Azure AD's architecture, see [What is the Azure Active Directory architecture?](/azure/active-directory/fundamentals/active-directory-architecture).

## Consistency models and read operations

Azure AD deploys a **session consistency** model by default. In this, an authenticated read request is always routed to the secondary replica to which the logical session is tied. If a write was made to primary replica A.0, secondary replica A.1 is the first to be replicated and it fulfills a subsequent read from the same authenticated session. Therefore, geo-redundancy and an asynchronous replication notwithstanding, the object that was created or updated is available to the authenticated client.

However, because the data is also replicated to other secondary replicas located in other geographies, the data is not always immediately available across all data centers. That is, an authenticated read request routed to a secondary replica X.1 may not immediately reflect the change that originated from A.0. This lag may be less than a microsecond and unnoticeable. However, Azure AD ensures that the change is eventually available at all secondary replicas. This state of mutual data consistency is referred to as **eventual consistency**.

// More.
// + How does it impact the development of your apps? 
// + Webhooks usage?



# See also
+ [What is the Azure Active Directory architecture?](/azure/active-directory/fundamentals/active-directory-architecture)
