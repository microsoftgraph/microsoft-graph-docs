---
title: "Versioning, support, and breaking change policies for Microsoft Graph "
description: "This article describes the support and breaking change policies for Microsoft Graph and the versions of the Microsoft Graph API that are currently available."
localization_priority: Priority
---

# Versioning, support, and breaking change policies for Microsoft Graph

This article describes the support and breaking change policies for Microsoft Graph and the versions of the Microsoft Graph API that are currently available.

## Support policy and deprecation information

Microsoft Graph follows the [Microsoft Lifecycle Policy](https://support.microsoft.com/lifecycle).

As new versions of the Microsoft Graph REST APIs and Microsoft Graph SDKs are released, earlier versions will be retired. Microsoft will declare a version as deprecated at least 24 months in advance of retiring an API or an SDK.

When we increment the major version of the API (for example, from v1.0 to v2.0), we are announcing that the current version (in this example, v1.0) is immediately deprecated and we will no longer support it 24 months after the announcement. We might make exceptions to this policy for service security or health reliability issues.

When an API is marked as deprecated, we strongly recommend that you migrate to the latest version as soon as possible. In some cases, we will announce that new applications will have to start using the new APIs a short time after the original APIs are deprecated. In those cases, only active applications that currently use the deprecated APIs can continue to use them.

### API contract and non-backward compatible changes

Microsoft Graph has a log of changes across versions. These changes are listed in the [Microsoft Graph Changelog](changelog.md). As new functionality and data is added to Microsoft Graph, we will increment the API version number for any non-backward compatible changes to the API.

The following are examples of non-backward compatible changes:

- Changes to the URL or fundamental request/response associated with a resource
- Removal, rename, or change to the type of a declared property
- Removal or rename of APIs or API parameters
- Addition of a required request header

The following are examples of backward compatible changes:

- Addition of properties that are nullable or have a default value
- Addition of a member to an enumeration
- Removal, rename, or change to the type of an open extension
- Removal, rename, or change to the type of an annotation
- Introduction of paging to existing collections
- Changes to error codes
- Changes to the order of properties
- Changes to the length or format of opaque strings, such as resource IDs

>**Note:** Over time, we will update the list of backward compatible changes. If you generate your own client proxies (like WCF clients), our guidance is that your client applications should be prepared to receive properties and derived types not previously defined by the Microsoft Graph API service. Microsoft Graph API follows the guidance described in the [Model Versioning](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md#12-versioning) section in the [Microsoft REST API guidelines](https://github.com/microsoft/api-guidelines/).

## Versions

The following versions of the Microsoft Graph API are currently available.

### Beta version
In general, APIs debut in the beta version and are accessible in the `https://graph.microsoft.com/beta` endpoint. For beta API documentation, see [Microsoft Graph beta endpoint reference](/graph/api/overview?view=graph-rest-beta). Expect breaking changes to the beta version from time to time. Do not take a production dependency on /beta APIs.

We make no guarantees that a beta feature will be promoted to the current version. When the Microsoft Graph API team believes that a beta feature is ready for general availability (GA), we will add that feature to the latest current version. If the promotion of the feature would result in a breaking change to the current version, the version number will be incremented, with the new version becoming the current version.
Our developer community can post feature request on [UserVoice](https://officespdev.uservoice.com/), including requests for new features as well as requests to promote existing beta APIs to the current version.

### Current version

The current version of Microsoft Graph is v1.0. Exposed under `https://graph.microsoft.com/v1.0`, the Microsoft Graph API /v1.0 version contains features that are generally available and ready for production use. Browse the [documentation for the v1.0 APIs](/graph/api/overview?view=graph-rest-1.0).

## Preview status
A feature or API is labelled as "(preview)" to indicate its behavior is _unique_ in the beta endpoint. 

The behavior of most features and APIs in the v1.0 version is in parity with the beta version. "preview" qualifies a minority of features and APIs in one of the following two cases: 
- Available in only beta
- Available in beta differently than in v1

Like any other API in the beta endpoint, APIs marked in the documentation as "(preview)" may experience breaking changes without notice. Do not access APIs from the beta endpoint in production apps.


### Deprecated and unsupported versions

There are currently no deprecated versions of Microsoft Graph.

## Terms of use

By using the Microsoft Graph APIs, you agree to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=/graph/context).

Your feedback is important to us. Connect with us on [StackOverflow](https://stackoverflow.com/questions/tagged/microsoftgraph?sort=newest). Tag your questions with [microsoft-graph].
