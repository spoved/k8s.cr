# K8S.cr

A Kubernetes Binding lib for Crystal-lang forked from [psykube/pyrite](https://github.com/psykube/pyrite).
Forked due to possibly destructive changes to change namespaces and adapt for use with [`Kube::Client`](https://github.com/spoved/kube-client.cr)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  k8s:
    github: spoved/k8s.cr
```

## Usage

K8S.cr should support Kubernetes API from 1.11.0 and beyond. In order to use
the bindings, you will want to include the VERSION that best maps to your k8s api version.
Requiring more than one version at this time will result in an error.

```crystal
require "k8s/versions/v1.20"
```

## Contributing

1. Fork it ( https://github.com/spoved/k8s.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[jwaldrip]](https://github.com/jwaldrip) Jason Waldrip - original creator
- [[kalinon]](https://github.com/kalinon) Holden Omans - maintainer
- [[krzysiek1507]](https://github.com/krzysiek1507) Krzysztof Rybka - Ruby [Hashdiff](https://github.com/liufengyun/hashdiff)
- [[liufengyun]](https://github.com/liufengyun) Fengyun Liu - Ruby [Hashdiff](https://github.com/liufengyun/hashdiff)
