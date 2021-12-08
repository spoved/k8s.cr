require "./src/versions/v1.22.cr"
require "log"

::Log.builder.bind(
  source: "*",
  level: :trace,
  backend: ::Log::IOBackend.new(dispatcher: :sync),
)

a = {
  metadata: {
    labels: {
      foo: "bar",
    },
  },
}
b = {
  metadata: {
    labels: {
      foo:     "bar",
      another: "label",
    },
  },
}

pp K8S::Util.json_patch(a, b)
