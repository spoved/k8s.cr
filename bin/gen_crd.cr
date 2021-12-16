#!/usr/bin/env crystal run --error-trace
require "log"
require "../src/versions/v1.23"
require "./helper"
require "./generator"
require "./crds/*"

Log.setup(:trace)

K8S::CRD::Generator.new(File.expand_path(ARGV[0]), File.expand_path(ARGV[1])).generate
