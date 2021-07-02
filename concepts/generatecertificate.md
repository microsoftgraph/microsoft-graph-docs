---
title: "Create a self-signed public certificate for authentication"
description: "Generate a self-signed public certificate to authenticate your application."
author: "FaithOmbongi"
localization_priority: Priority
---

# Create a self-signed public certificate for authentication

Azure Active Directory (Azure AD) supports two types of authentication for service principals: **password-based authentication** (app secret) and **certificate-based authentication**. While app secrets can easily be created by using the **App registrations** blade in the portal, it is recommended that your application uses a certificate.

For testing purposes, you can use a self-signed public certificate instead of a Certificate Authority (CA) signed certificate. This article shows you how to use PowerShell to generate and export a self-signed certificate with or without a private key.

> [!CAUTION]
> Using a self-signed certificate is only recommended for development, not production.

Modern versions of Windows (Windows 8.1 and greater, and Windows Server 2012R2 and greater) include a built-in PowerShell cmdlet `New-SelfSignedCertificate` to create a self-signed certificate and the `Export-Certificate` cmdlet to export it to a location that is easily accessible. This tutorial uses these built-in PowerShell tools to generate and export the certificate.

> [!NOTE]
> + Longer **-KeyLength** values are supported, but 2048 bit size is highly recommended for the best combination of security and performance.
> + Only `RSA` is allowed for **-KeyAlgorithm**.
> + Supported values for **-HashAlgorithm** are `SHA256`, `SHA384`, and `SHA512`.
> + This tutorial generates certificates that are valid for 1 year. To customize the start and expiry date as well as other properties, see the [`New-SelfSignedCertificate` reference](/powershell/module/pki/new-selfsignedcertificate?view=windowsserver2019-ps).
> + Self-signed certificate generated following this tutorial are supported for use for both client and server authentication.


## Option 1: Generate and export your public certificate without a private key

In an elevated PowerShell prompt, run the following command and leave the PowerShell console session open. In the following command, replace `{certificateName}` with name you wish to give your certificate.

```powershell

$cert = New-SelfSignedCertificate -Subject "CN={certificateName}" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256    ## Replace {certificateName}

```

The **$cert** variable in the previous command stores your certificate in the current session and allows you to export it. The command below exports the certificate in `.cer` format. You can export it in any file format supported on the Azure Portal including `.pem` and `.crt`.

```powershell

Export-Certificate -Cert $cert -FilePath "C:\Users\admin\Desktop\{certificateName}.cer"   ## Specify your preferred location and replace {certificateName}

```

Your certificate is now ready to upload to the Azure Portal. Once uploaded, you can retrieve the certificate thumbprint for use to authenticate your application.


## Option 2: Generate and export your public certificate with it's private key

In an elevated PowerShell prompt, run the following command and leave the PowerShell console session open. Replace `{certificateName}` with name you wish to give your certificate.

```powershell

$cert = New-SelfSignedCertificate -Subject "CN={certificateName}" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256    ## Replace {certificateName}

```

The **$cert** variable in the previous command stores your certificate in the current session and allows you to export it. The command below exports the certificate in `.cer` format. You can export it in any format supported on the Azure Portal including `.pem` and `.crt`.


```powershell

Export-Certificate -Cert $cert -FilePath "C:\Users\admin\Desktop\{certificateName}.cer"   ## Specify your preferred location and replace {certificateName}

```

Still in the same session, create a password for your certificate private key and save it in a variable. In the following command, replace `{myPassword}` with the password you wish to use to protect your certificate private key.

```powershell

$mypwd = ConvertTo-SecureString -String "{myPassword}" -Force -AsPlainText  ## Replace {myPassword}

```

Now, using the password you stored in the `$mypwd` variable, secure and export your private key.

```powershell

Export-PfxCertificate -Cert $cert -FilePath "C:\Users\admin\Desktop\{privateKeyName}.pfx" -Password $mypwd   ## Specify your preferred location and replace {privateKeyName}

```

Your certificate (`.cer` file) is now ready to upload to the Azure Portal. You also have a private key (PFX file). Once uploaded, you can retrieve the certificate thumbprint for use to authenticate your application. 


## Optional task: Delete the certificate from the keystore.

If the application that will interact with Microsoft Graph and Azure AD will not run from your local machine, you can delete the certificate (and the private key) you generated from your personal store. First, get it's thumbprint.

```powershell

Get-ChildItem -Path "Cert:\CurrentUser\My" | Where-Object {$_.Subject -Match "{certificateName}"} | Select-Object Thumbprint, FriendlyName    ## Replace {privateKeyName} with the name you gave your certificate

```

Then, copy the thumbprint that is displayed and use it delete the certificate and it's private key.

```powershell

Remove-Item -Path Cert:\CurrentUser\My\{pasteTheCertificateThumbprintHere} -DeleteKey

```


## Next steps

Now that you have your certificate in one of the formats supported by Azure AD, use it to [authenticate your application]().


## See more

The `New-SelfSignedCertificate` cmdlet supports additional properties that you can use to configure your certificate. These include the following:
+ `-DnsName` to specify the issuer. This can be your domain address. 
+ `-NotBefore` and `-NotAfter` properties to explicitly specify when the certificate becomes valid and when it expires.
+ `-Pin` to specify the personal identification number (PIN) used to access the private key of the new certificate.

To know the properties you can use to configure your certificate, see the [`New-SelfSignedCertificate` reference](/powershell/module/pki/new-selfsignedcertificate?view=windowsserver2019-ps).
