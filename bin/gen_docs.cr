#!/usr/bin/env crystal
require "./helper"

major = 1
minor = 11
# minor = 22

for_each_version(major, minor) do |prefix, _, version|
  generate_docs_for(prefix, version)
end
