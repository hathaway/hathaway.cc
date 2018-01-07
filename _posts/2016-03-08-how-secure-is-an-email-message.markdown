---
layout: post
title:  How secure is an email message?
description: It’s not nearly as secure as you think it is. Here’s what you can do to keep your email from the prying eyes of strangers.
date:   2016-03-08 14:39:44 -0500
categories: email encryption security
---

Email is a communication medium that is used by nearly everyone on the Internet. It’s one of the few protocols so widely used, second only to maybe HTTP. That is the power of email. Everyone has it and uses it.

But the security of email is a topic that is often misunderstood. This is largely because **there is no single answer to the question, "how secure is an email message?"** As a general rule of thumb, by default it should be treated as a very insecure medium of communication. There are ways to secure your email but let’s start out with a discussion of the different pieces at play.

## How secure is the email message content?

When discussing the security of an email message, you need to break it up into two pieces. First comes the content of the email message itself.

The most insecure parts of an email message are the sender, recipient, and subject of the message. This information is extremely insecure and visible to anyone who touches the message. Think of it like the names and addresses on the outside of a mail envelope. So you should treat these parts carefully because even if you are using encryption on the email message itself, which we’ll discuss later, these components will not be protected.

This is the virtual envelope with your content on the inside. If you were to come across a letter, how easy would it be to view what’s inside? Not that hard, right? You simply open the envelope. Email messages, by default, are no different. While in transit and once they get to their destination, **email messages are like envelopes that anyone with access can open and view the contents.**

## How secure are email transmissions?

The second aspect of email message security is the transmission of messages from the sender to the recipient. This area is very misunderstood. By default, you have very little control over how a message is handled in transit. Sure, you can make sure your email client is using SSL or TLS when connecting to send the message, and you should, but once you hand it off to the first email server, you are also handing over control on how that message is handled from that point on. Depending on who you are sending the message to it may or may not be transmitted using encrypted connections from hop to hop. **This essentially means that the contents of your message could be openly transmitted over the Internet by a bad email provider or ISP. And when this happens, an unencrypted message could be viewed by telcos, ISPs, or government organizations.**

Any decent email hosting company will use encrypted connections when receiving and sending email to other email hosts. At Mailprotector, we always default to using TLS encryption for all email message transmissions. Unfortunately many other email hosting companies still don’t support encrypted connections, so whenever you send a message, you have to consider the possibility that it isn’t going to be transmitted securely.

## How to make your email more secure

So now we know why email is, by default, a very insecure communication method. But there are ways to make it more secure.

### Check your email client settings

Start by checking your email client settings to make sure you are using SSL or TLS in your inbound(receiving) and outbound(sending) connections. Any competent email provider offers this option and if yours doesn’t, switch to one that does immediately.
Setting your client to use a secure connection is especially important when using public networks or wifi (like you find at Starbucks) or when on an airplane. Take this recent story by Steven Petrow, [a reporter who had his emails hacked mid-air while writing an Apple-FBI story][article]...now that’s irony.

> "I hacked your email on the plane and read everything you sent and received. I did it to most people on the flight." He had verbatim detail of a long email that he repeated back to me essentially word for word.

The victim in this example wasn’t using a virtual private network(VPN) or even SSL/TLS connections when sending and receiving his emails. If you were in a similar situation, anyone on the same network as you could use software to capture the data being transmitted and view it since the data isn’t encrypted. Using SSL/TLS options for sending and receiving email is the bare minimum protection you should have on public networks. Ideally, you should also be using a VPN to protect any data you are transmitting while on public networks.


### Look into full encryption options

If the security of your email is a high enough priority, you should also consider encrypting the content of the email messages you send. These technologies protect the actual content inside the message. Based on the mail analogy cited earlier, if someone were to get a hold of your encrypted email message, they wouldn’t be able to view or understand the content. It would be like opening a letter written in code.

A couple of methods for encrypting email content are S/MIME and PGP. However, there is a downside to both of these technologies. Each requires the sender and recipient to exchange encryption keys prior to sending an encrypted message. So there is a barrier to using these technologies and managing the keys can become frustrating. There are better options available.

At [Mailprotector][mp], for instance, we offer a way to make email encryption much easier with our [Bracket Encrypted Email][bracket-mp] service. Not everyone needs this level of security, but some people do. Bracket lets you securely send encrypted email containing corporate and financial data, personal info, legal docs, medical records, but it’s much easier for people to use.

<iframe width="560" height="315" src="https://www.youtube.com/embed/z5YmCCmQc_w" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>

## Summary: 3 steps to improve email privacy

1. Check your email client settings to make sure you’re sending and receiving email over encrypted connections
2. Ask your email provider if they encrypt all email in and out of their networks, and if they don’t find one who does (hint, hint)
3. Look into the possibility of utilizing full [email encryption options][bracket-mp]

So while email remains one of the most popular and useful communication mediums, it can be quite insecure by default. That said, **you do have options when improving the security of your email.**

[mp]: https://mailprotector.com
[bracket-mp]: https://mailprotector.com/bracket
[article]: http://www.usatoday.com/story/tech/columnist/2016/02/24/got-hacked-my-mac-while-writing-story/80844720/
