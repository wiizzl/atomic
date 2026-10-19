#!/bin/bash

test -f /etc/pki/containers/atomic.pub

jq '.transports.docker["ghcr.io/wiizzl/atomic"] = [{
  type: "sigstoreSigned",
  keyPath: "/etc/pki/containers/atomic.pub",
  signedIdentity: { type: "matchRepository" }
}]' /etc/containers/policy.json >/etc/containers/policy.json.new
mv /etc/containers/policy.json.new /etc/containers/policy.json
