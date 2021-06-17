---
title: "Generate a self-signed public certificate for your application"
description: "Generate a self-signed public certificate to authenticate your application."
author: "FaithOmbongi"
localization_priority: Priority
---

# Generate a self-signed public certificate to authenticate your application

Azure AD supports two types of authentication for service principals: **password-based authentication** (app secret) and **certificate-based authentication**. While app secrets can easily be generated via the **App registrations** blade, Microsoft recommends using a certificate.

While you can use a CA-signed public certificate, for testing purposes, you can also use a self-signed public certificate. This article curates popular methods you can use to generate your self-signed certificate.

>**NOTE:
>Using a self-signed certificate is only recommended for development, not production.

We will generate the certificates specifying the following basic properties:
+ The certificate name. We will use the personal certificates store.
+ Where to store the certificate after it is generated.
+ The certificate key length.
+ The export policy to specify whether the certificate is exportable.
+ The cryptographic algorithm for the certificate. We will use RSA.
+ The hash algorithm for the certificate.

After you generate your certificate, you can export them to a location where they are easily accessible and in any of the following file types supported by the Azure Portal: `.cer`, `.pem`, and `.crt`.

## Generate your public certificate

##### [Use PowerShell](#tab/powershell)

Modern versions of Windows (Windows 8.1 and greater, and Windows Server 2012R2 and greater) include a built-in PowerShell cmdlet `New-SelfSignedCertificate` to create a self-signed certificate.

In an elevated PowerShell prompt, run the following command:

```powershell
$cert = New-SelfSignedCertificate -Subject "CN={certificateName}" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256 
```

The following are the descriptions of the properties:

|Property|Description|
|:---|:---|
|-Subject||
|-CertStoreLocation|This specified the location of the generated certificate. |
|-KeyExportPolicy|When set to `Exportable`, This allows you to specify that the private key is exportable so you can export the certificate with it's associated private key.|
|-KeySpec||
|-KeyLength||
|-KeyAlgorithm|This defines the cryptographic algorithm. Azure AD supports both RSA, AES, and ECC.|
|-HashAlgorithm||

>**NOTE:** To learn all supported parameters for the `New-SelfSignedCertificate` cmdlet, see the [`New-SelfSignedCertificate` reference](/powershell/module/pki/new-selfsignedcertificate?view=windowsserver2019-ps).

The **$cert** variable stores your certificate in the current session and allows you to export it using the command below.

This certificate is supported for use for both client and server authentication. To export the certificate from your computer's personal certificate store to another location, for example, to your desktop, use the following command.

```powershell
Export-Certificate -Cert $cert -FilePath "C:\Users\admin\Desktop\{certificateName}.cer"   ##replace {certificateName}
```

##### [Use C#](#tab/csharp)

```csharp
using System;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
    /* CONSOLE APP - PROOF OF CONCEPT CODE ONLY!!
     * This code uses a self-signed certificate and should not be used 
     * in production. This code is for reference and learning ONLY.
     */
namespace Self_signed_cert
{
    class Program
    {
        static void Main(string[] args)
        {
            // Generate a guid to use as a password and then create the cert.
          string password = Guid.NewGuid().ToString();
          var selfsignedCert = buildSelfSignedServerCertificate(password);
          // Print values so we can copy paste into the JSON fields.
            // Print out the private key in base64 format.
          Console.WriteLine("Private Key: {0}{1}", Convert.ToBase64String(selfsignedCert.Export(X509ContentType.Pfx, password)), Environment.NewLine);
          // Print out the start date in ISO 8601 format.
          DateTime startDate = DateTime.Parse(selfsignedCert.GetEffectiveDateString()).ToUniversalTime();
          Console.WriteLine("startDateTime: " + startDate.ToString("o"));
          // Print out the end date in ISO 8601 format.
          DateTime endDate = DateTime.Parse(selfsignedCert.GetExpirationDateString()).ToUniversalTime();
          Console.WriteLine("endDateTime: " + endDate.ToString("o"));
          // Print the GUID used for keyId
          string signAndPasswordGuid = Guid.NewGuid().ToString();
          string verifyGuid = Guid.NewGuid().ToString();
          Console.WriteLine("keyId GUID for Sign and passwordCredentials: " + signAndPasswordGuid);
          Console.WriteLine("keyId GUID for Verify: " + verifyGuid);
          // Print out the password.
          Console.WriteLine("Password: {0}", password);
          // Print out a displayName to use as an example.
          Console.WriteLine("displayName: CN=Example");
          Console.WriteLine();
          // Print out the public key.
          Console.WriteLine("Public Key: {0}{1}", Convert.ToBase64String(selfsignedCert.Export(X509ContentType.Cert)), Environment.NewLine);
          Console.WriteLine();
          // Generate the customKeyIdentifier using hash of thumbprint.
          Console.WriteLine("Cert thumprint: {0}{1}", selfsignedCert.Thumbprint, Environment.NewLine);
          Console.WriteLine("customKeyIdentifier:");
          string keyIdentifier = GetSha256FromThumbprint(selfsignedCert.Thumbprint);
          Console.WriteLine(keyIdentifier);
        }
        // Generate a self-signed certificate.
        private static X509Certificate2 buildSelfSignedServerCertificate(string password)
        {
          const string CertificateName = @"Microsoft Azure Federated SSO Certificate TEST";
          DateTime certificateStartDate = DateTime.UtcNow;
          DateTime certificateEndDate = certificateStartDate.AddYears(2).ToUniversalTime();
          X500DistinguishedName distinguishedName = new X500DistinguishedName($"CN={CertificateName}");
          using (RSA rsa = RSA.Create(2048))
          {
            var request = new CertificateRequest(distinguishedName, rsa, HashAlgorithmName.SHA256, RSASignaturePadding.Pkcs1);
            request.CertificateExtensions.Add (
              new X509KeyUsageExtension(X509KeyUsageFlags.DataEncipherment | X509KeyUsageFlags.KeyEncipherment | X509KeyUsageFlags.DigitalSignature, false)
            );
            var certificate = request.CreateSelfSigned(new DateTimeOffset(certificateStartDate), new DateTimeOffset(certificateEndDate));
                certificate.FriendlyName = CertificateName;
            return new X509Certificate2(certificate.Export(X509ContentType.Pfx, password), password, X509KeyStorageFlags.Exportable);
            }
        }
        // Generate hash from thumbprint.
        public static string GetSha256FromThumbprint(string thumbprint)
        {
          var message = Encoding.ASCII.GetBytes(thumbprint);
          SHA256Managed hashString = new SHA256Managed();
          return Convert.ToBase64String(hashString.ComputeHash(message));
        }
    }
}
```



---


#### Export your certificate from your personal certificate store

1. In Windows search, search for "Manage user certificates". This takes you to your local certificate store with the root node indicating **Certificates - Current User**. Expand the **Personals**, then click the **Certificates** option. Find the certificate whose **Issued To** field is the same name you specified for `{certificateName}`.
2. Right click **All Tasks**, **Export**.
3. Click **Next** to continue with the certificate wizard.
4. You do not need to export the private key. Select **No, do not export the private key**.
5. Select the first option, **DER encoded binary X.509 (.CER)**.
6. Specify a location and file name for your certificate.
7. Click **Finish** to export your certificate.

Your certificate is now stored in the location you specified in step 6.

https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-certificates-point-to-site

## Next steps

Now that you have your certificate in one of the formats supported by Azure AD, you can use it to authenticate your application.
