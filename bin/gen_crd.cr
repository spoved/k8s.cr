#!/usr/bin/env crystal run --error-trace
require "log"
require "../src/versions/v1.23"
require "./helper"
require "./generator"
require "./crds/*"

Log.setup(:trace)

# CRD_DEF = "spec/fixtures/resources/test/cert-manager.crds.yaml"
# OUTPUT  = "tmp/cert-manager"

K8S::CRD::Generator.new(ARG[0], ARG[1]).generate
