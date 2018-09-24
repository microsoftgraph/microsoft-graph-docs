# Testing of Calling Bots

> **Important:** APIs for Calling in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This document describes how to setup the Bot for testing locally by tunneling the traffic (media and signaling) through ngrok to your local machine. 

## Prerequisites
The testing setup requires ngrok to create tunnels to localhost. Go to [ngrok](https://ngrok.com) and sign up for a free account. Once you signed up, go to the [dashboard](https://dashboard.ngrok.com) and get your authtoken.

Create an ngrok configuration file `ngrok.yml` with the following data
```
authtoken: <Your-AuthToken>
```


> **TIP**: Free ngrok account does not provide static tunnels. Tunnels change everytime a tunnel is created. So, if using free account, it is recommended to not close ngrok until it's use is completed.

> **TIP**: Ngrok does not require sign up if you do not use TCP tunnels.

## Setting up Signaling

In order for the platform to talk to your bot, the bot needs to be reached over the internet. So, an ngrok tunnel is created in http mode with an address pointing to a port on your localhost. Add the following lines to your ngrok config

```
tunnels:
    signaling:
        addr: 12345
        proto: http
```

## Setting up Local Media

> **NOTE**: This section is only required for Local Media bots and can be skipped if you do not host media yourself.

Local Media uses certificates and TCP tunnels to properly work. The following steps are required in order for proper media establishment.

- Ngrok's public TCP endpoints have fixed urls. They are `0.tcp.ngrok.io`, `1.tcp.ngrok.io`, etc. You should have a dns CNAME entry for your service that points to these urls. In this example, let's say `0.bot.contoso.com` is pointing to `0.tcp.ngrok.io`, and similarly for other urls.
- Now you require an SSL certificate for the url you own. To make it easy, use an SSL certificate issued to a wild card domain. In this case, it would be `*.bot.contoso.com`. This ssl certificate is validated by Media flow so should match your media flow's public url. Note down the thumbprint and install the thumbprint in your machine certificates.
- Now, we setup a TCP tunnel to forward the traffic to localhost. Write the following lines into your ngrok config.
    ```
    media:
        addr: 8445
        proto: tcp
    ```

## Start Ngrok

Now that ngrok configuration is ready, start it up. Download the ngrok executable and run the following command

```
ngrok.exe start -all -config <Path to your ngrok.yml>
```

This would start ngrok and provide you the public urls which provide the tunnels to your localhost. The output looks like the following
```
Forwarding  http://signal.ngrok.io -> localhost:12345
Forwarding  https://signal.ngrok.io -> localhost:12345
Forwarding  tcp://1.tcp.ngrok.io:12332 -> localhost:8445
```

Here, `12345` is my signaling port, `8445` is the local media port and `12332` is the remote media port exposed by ngrok. Note that we have a forwarding from `1.bot.contoso.com` to `1.tcp.ngrok.io`. This will be used as the media url for bot. These ports are just suggestive and you can use any available port.

### Update Code

Once ngrok is up and running, we update the code to use the config we just setup.

#### Update Signaling

- In the builder, change the `NotificationUrl` to the signaling url provided by ngrok.

```
statefulClientBuilder.SetNotificationUrl(
    new Uri("https://signal.ngrok.io/notificationEndpoint"))
```

> **IMPORTANT**: Replace signal with the one provided by ngrok and the `NotificationEndpoint` with the controller path that receives notification.

> **IMPORTANT**: The url in `SetNotificationUrl` must be HTTPS.

> **IMPORTANT**: Your local instance must be listening to http traffic on the signaling port. The requests made by Platform will reach the bot as localhost http traffic when End to End encryption is not setup.

#### Update Media

Update your `MediaPlatformSettings` to the following.
```
var mediaPlatform = new MediaPlatformSettings 
{
    ApplicationId = <Your application id>
    MediaPlatformInstanceSettings = new MediaPlatformInstanceSettings
    {
        CertificateThumbprint = <Your SSL Cert thumbprint>,
        InstanceInternalPort = <Localhost media port>,
        InstancePublicPort = <Ngrok exposed remote media port>,
        InstancePublicIPAddress = new IPAddress(0x0),
        ServiceFqdn = <Media url for bot (eg: 1.bot.contoso.com)>,
    },
}
```

> **IMPORTANT**: The Certificate Thumbprint provided above should match the Service FQDN. That is why the DNS entries are required.

## Next Steps

Your bot can now run locally and all the flows work from your localhost.

## Caveats

- The free accounts of ngrok do **NOT** provide End to End encryption. The HTTPS data ends at the ngrok url and the data flows unencrypted from ngrok to localhost. You require paid ngrok account and configuration update to use End to End encryption. See [ngrok docs](http://ngrok.com/docs) for steps on setting up secure E2E tunnels.

- Because the bot callback url is dynamic, incoming call scenarios won't work as they are part of bot registration and they are static. One way to fix this is to use a paid ngrok account which provides fixed subdomains to which you can point your bot and the platform.

- This kind of testing works only for cloud services and not for local service fabric instance.