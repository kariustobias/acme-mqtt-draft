#!/bin/bash

kramdown-rfc acme-mqtt-draft.md > acme-mqtt.xml
xml2rfc acme-mqtt.xml