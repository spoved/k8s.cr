# K8S.cr

A Kubernetes Binding lib for Crystal-lang forked from [psykube/pyrite](https://github.com/psykube/pyrite).
Forked due to possibly destructive changes to change namespaces and adapt for use with [`Kube::Client`](https://github.com/spoved/kube-client.cr)

[![.github/workflows/ci.yml](https://github.com/spoved/k8s.cr/actions/workflows/ci.yml/badge.svg)](https://github.com/spoved/k8s.cr/actions/workflows/ci.yml) [![.github/workflows/docs.yml](https://github.com/spoved/k8s.cr/actions/workflows/docs.yml/badge.svg)](https://spoved.github.io/k8s.cr/) [![GitHub release](https://img.shields.io/github/release/spoved/k8s.cr.svg)](https://github.com/spoved/k8s.cr/releases) [![Chat on Telegram](https://img.shields.io/badge/chat-telegram-blue)](https://t.me/k8s_cr)

This library contains generated classes for Kubernetes resources for various Kubernetes API versions, as well as a `Hashdiff` module for comparing hashes of Kubernetes resources.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  k8s:
    github: spoved/k8s.cr
```

## Documentation

View the Documentation for the version you are using:

<https://spoved.github.io/k8s.cr/>

## Usage

K8S.cr should support Kubernetes API from 1.11.0 and beyond. In order to use
the bindings, you will want to include the [VERSION](src/versions) that best maps to your k8s api version.
Requiring more than one version at this time will result in an error.

```crystal
require "k8s/versions/v1.20"
```

### Resources

Some examples on the easier methods to grab/set variables:

```crystal
# Access a nested path
resource.spec![:template, :metadata, :labels, :app]

# Set a nested path
resource.spec![:template, :metadata, :labels, :app] = "myapp"

# Can use symbols or strings
resource.spec![:template]
resource.spec!["template"]
```

### CRD Generation

To generate resources for a CRD, you can use the crd_gen.cr file.

```crystal
# First dump the CRDs to a file
kubectl get crds -o yaml > crds.yaml

# Then generate the resources
./lib/k8s/bin/gen_crd.cr -- ./crds.yaml <output directory>
```

## Contributing

1. Fork it ( <https://github.com/spoved/k8s.cr/fork> )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[kalinon]](https://github.com/kalinon) Holden Omans - maintainer
- [[jwaldrip]](https://github.com/jwaldrip) Jason Waldrip - [psykube/pyrite](https://github.com/psykube/pyrite)
- [[krzysiek1507]](https://github.com/krzysiek1507) Krzysztof Rybka - Ruby [Hashdiff](https://github.com/liufengyun/hashdiff)
- [[liufengyun]](https://github.com/liufengyun) Fengyun Liu - Ruby [Hashdiff](https://github.com/liufengyun/hashdiff)
