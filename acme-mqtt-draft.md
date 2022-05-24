---
###
# Internet-Draft Markdown Template
#
# Rename this file from draft-todo-yourname-protocol.md to get started.
# Draft name format is "draft-<yourname>-<workgroup>-<name>.md".
#
# For initial setup, you only need to edit the first block of fields.
# Only "title" needs to be changed; delete "abbrev" if your title is short.
# Any other content can be edited, but be careful not to introduce errors.
# Some fields will be set automatically during setup if they are unchanged.
#
# Don't include "-00" or "-latest" in the filename.
# Labels in the form draft-<yourname>-<workgroup>-<name>-latest are used by
# the tools to refer to the current version; see "docname" for example.
#
# This template uses kramdown-rfc: https://github.com/cabo/kramdown-rfc
# You can replace the entire file if you prefer a different format.
# Change the file extension to match the format (.xml for XML, etc...)
#
###
title: "TODO - Your title"
abbrev: "TODO - Abbreviation"
category: info

docname: draft-todo-yourname-protocol-latest
submissiontype: IETF  # also: "independent", "IAB", or "IRTF"
number:
date:
consensus: true
v: 3
area: AREA
workgroup: WG Working Group
keyword:
 - next generation
 - unicorn
 - sparkling distributed ledger
venue:
  group: WG
  type: Working Group
  mail: WG@example.com
  arch: https://example.com/WG
  github: USER/REPO
  latest: https://example.com/LATEST

author:
 -
    fullname: Your Name Here
    organization: Your Organization Here
    email: your.email@example.com

normative:

informative:

---

# Abstract

This document extends the Automatic Certificate Management Environment (ACME) [RFC8555] to provision X.509 ceritificates for Internet of Things (IoT) devices by using the Message Queuing Telemetry Transport (MQTT) protocol.

---

# Introduction

IoT devices have become very common in the past years. 

Problemset: often using HTTPS for IoT devices isnt widely supported. MQTT is widely supported. -> 


This document defines a extension to the Automatic Certificate Management Environment (ACME) Protocol by distribung X.509 certificates via a publish subscriber pattern through the use of the Message Queuing Telemetry Transport (MQTT) protocol. 

# Terminology

MQTT: Message Queuing Telemetry Transport

ACME: Automatic Certificate Management Environment

ACME Client:

ACME Server:


# Specification

## Setup

Since the MQTT Protocol requires a MQTT broker, the initial ACME setup consisting of an ACME Client and an ACME Server needs to be expanded.

The ACME Client/ACME Server will now publish its messages to an MQTT broker, which will then forward the incoming messages to the ACME Server/ACME Client.

## Handling Endpoints

Both Client and Server subscribe to the "/acme" endpoint, where all messages will be published on.

Since all messages are using the same endpoint, there needs to be an additional JSON field called "path". The "path" field specifies the HTTPS path of the initial ACME protocol (e.g. "field : directory", which would be the "/acme/directory" path URL in the initial ACME protocol).

## Establishing a secure connection

Since all messages sent over the MQTT protocol are initially open to anyone, some encryption between the ACME Client and the ACME server is necessary.

## IoT Device Certificate Signing Requests

## Iot Device Certificates

## IoT Device Configuration



# Conventions and Definitions

{::boilerplate bcp14-tagged}


# Security Considerations

TODO Security


# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
