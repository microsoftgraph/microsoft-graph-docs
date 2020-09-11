---
title: "Generating proof of possession tokens for rolling keys"
description: "As part of the request validation for the addKey and removeKey methods, a proof of possession token is required. This document provides guidance for generating the proof of possession token."
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# Generating proof of possession tokens for rolling keys

You can use the **addKey** and **removeKey** methods defined on the [application](/graph/api/resources/application?view=graph-rest-1.0) and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0) resources to roll expiring keys programmatically.

As part of the request validation for these methods, a proof of possession of an existing key is verified before the methods can be invoked. The proof is represented by a self-signed JWT token. This JWT token must be signed using the private key of one of the application's existing valid certificates. The token lifespan should not exceed 10 minutes.

> **Note:** Applications that don’t have any existing valid certificates (no certificates have been added yet, or all certificates have expired), won’t be able to use this service action. You can use the [Update application](/graph/api/application-update?view=graph-rest-v1.0) operation to perform an update instead.

The token should contain the following claims:

- `aud` - Audience needs to be `00000002-0000-0000-c000-000000000000`.
- `iss` - Issuer needs to be the __id__  of the application that is making the call.
- `nbf` - Not before time.
- `exp` - Expiration time should be "nbf" + 10 mins.

You can use the following code example to generate this proof of possession token.

```csharp
using System;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using Microsoft.IdentityModel.Tokens;
using Microsoft.IdentityModel.JsonWebTokens;

namespace MicrosoftIdentityPlatformProofTokenGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            // Configure the following
            string pfxFilePath = "<Path to your certificate file";
            string password = "<Certificate password>";
            string objectId = "<id of the application or servicePrincipal object>";

            // Get signing certificate
            X509Certificate2 signingCert = new X509Certificate2(pfxFilePath, password);

            // audience
            string aud = $"00000002-0000-0000-c000-000000000000";

            // aud and iss are the only required claims.
            var claims = new Dictionary<string, object>()
            {
                { "aud", aud },
                { "iss", objectId }
            };

            // token validity should not be more than 10 minutes
            var now = DateTime.UtcNow;
            var securityTokenDescriptor = new SecurityTokenDescriptor
            {
                Claims = claims,
                NotBefore = now,
                Expires = now.AddMinutes(10),
                SigningCredentials = new X509SigningCredentials(signingCert)
            };

            var handler = new JsonWebTokenHandler();
            var x = handler.CreateToken(securityTokenDescriptor);
            Console.WriteLine(x);
        }
    }
}
```
