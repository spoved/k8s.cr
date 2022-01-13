#!/usr/bin/env crystal

require "./helper"

FileUtils.mkdir_p(File.join(".", Generator::SCHEMAS_DIR))

major = 1
minor = 11
# minor = 23

FileUtils.rm_rf File.join(".", Generator::VERSIONS_DIR)

for_each_version(major, minor) do |prefix, last_res, version|
  puts "Generating #{version}"
  Generator.generate(last_res, version)
end
