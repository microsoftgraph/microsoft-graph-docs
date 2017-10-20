# Microsoft Graph best practices

In this article we will discuss a collection of Microsoft Graph best practices. These best practices are derived from our experience with Azure AD and the experiences of customers like yourself.
For each best practice, we’ll explain:

- What the best practice is
- Why you want to enable that best practice
- What might be the result if you fail to enable the best practice
- Possible alternatives to the best practice
- How you can learn to enable the best practice

The best practices in this article are based on a consensus opinion and Microsoft Graph capabilities and feature sets as they exist at the time this article was written. Opinions and technologies change over time and this article will be updated on a regular basis to reflect those changes.
Microsoft Graph best practices discussed in this article include:

- Treat access tokens as opaque in client apps.
- Request the least-privileged set of permissions needed for your app
- Handling app permissions changes.(How to change (via UI and code)? What would happen (e.g. latency, consent, any differences for delegated permissions and application permissions, etc.) How to handle it (via UI and code)?)
- Handling admin consent.
- Handling conditional access and MFA.
- In queries, use $Select to limit responses to only the fields you need
- Recommend state management (delta query, webhooks) vs. polling for workloads that support it.
- Log response headers for failures, so you have the request ID and other diagnostics info to report back.


## Treat access tokens as opaque in client apps

## Request the least-privileged set of permissions needed for your app
Microsoft Graph exposes a rich set of granular permissions on the resources that it provides access to. Some permissions apply to only the resources owned by the signed-in user, some apply to all resources of a specific type across a directory, some apply to multiple resource types across a directory, some grant read-only access, others grant read-write access, and still others might restrict creation and deletion of resources. Whether your app runs with or without a signed-in user, someone, either the signed-in user or an administrator, will have to grant consent for the permissions your app needs. In fact, some permissions are highly privileged and always require an administrator's consent.

We recommend that you request the set of permissions that grants the least level of privileges needed by your app. This includes the following guidelines:

- Only request permissions on the resources that your app requires.
- Request only the level of access on a resource that is required by your app. For example, if your app only needs to read a resource, request read-only, not read-write, permissions on the resource. 
- Request only the scope of access that your app needs. For example, if your app only needs access to a resource of the signed-in user, request a permission that provides access to that resource on the signed-in user, not permission that grants access to the resource across all users.
- For apps that run with a signed-in user, if possible, limit the permissions you request to those that do not require administrator consent. Depending on the policies of the user's organization, this may allow a user to adopt and begin using your app without having to seek administrator approval.

Following these guidelines will accomplish the following:
1. Improve the security profile of your app by limiting the access that a user has to the specific resources and to the operations on those resources that your app needs.
2. Increase the chances that users or administrators will adopt and use your app. Users and administrators are much more likely to consent to a a limited set of thoughtfully scoped permissions rather than a request for a large set of permissions that grant expansive access to either their own data or their organization's data. 

If you are using [Azure AD v2.0](https://docs.microsoft.com/azure/active-directory/develop/active-directory-appmodel-v2-overview) to get access tokens for Microsoft Graph, you can use [dynamic consent](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-compare#incremental-and-dynamic-consent) to provide an even more intuitive consent experience for users. With dynamic consent, you can initially request a minimal set of permissions needed by your app and then request additional permissions when the user wants to use features that require additional access. In this way, the user's consent for the additional permission can be paired directly with the feature that your app needs it for. This provides a much more comfortable experience for users because they can understand exactly why your app needs each additional permission. Do not include permissions that require administrator consent in dynamic consent requests. Doing so means that a non-admin user will have to seek consent from an administrator. 

To learn more about Microsoft Graph permissions, see [Permissions](./permissions_reference.md).

## Use $select to limit query responses to only the fields needed by your app
By default, for most resources, Microsoft Graph returns all of the properties of the resource in query responses. If the query returns a large result set this can result in a heavy network load and may lead to longer response times, or, in the worst case, Microsoft Graph may throttle your requests. 

We recommend that you use the [`$select`](./query_parameters.md#select) query parameter in your requests to limit the properties returned by Microsoft Graph to those needed by your app. With the `$select` parameter you can choose exactly which properties of the target resources you want Microsoft Graph to return. Doing so will reduce network load and may lead to quicker response times as well as reduce the chances of your requests being throttled.

>**Note**: In `v1.0` Microsoft Graph returns a default subset of properties for queries on some resources like [user](../api-reference/resources/user.md) and [group](../api-reference/resources/group.md). To return properties outside of this default set, you must use `$select`.

