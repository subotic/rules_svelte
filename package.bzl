"External workspace requirements for rules_svelte"

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@build_bazel_rules_nodejs//:index.bzl", "yarn_install")

def rules_svelte_dependencies():
    http_archive(
        name = "build_bazel_rules_nodejs",
        sha256 = "6142e9586162b179fdd570a55e50d1332e7d9c030efd853453438d607569721d",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/3.0.0/rules_nodejs-3.0.0.tar.gz"],
    )

    yarn_install(
        name = "build_bazel_rules_svelte_deps",
        package_json = "@build_bazel_rules_svelte//internal:package.json",
        yarn_lock = "@build_bazel_rules_svelte//internal:yarn.lock",
    )
