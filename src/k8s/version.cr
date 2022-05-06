module K8S
  VERSION = {{ `shards version "#{__DIR__}"`.chomp.stringify }}
end
