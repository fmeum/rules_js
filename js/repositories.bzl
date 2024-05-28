"""Declare runtime dependencies

These are needed for local dev, and users must install them as well.
See https://docs.bazel.build/versions/main/skylark/deploying.html#dependencies
"""

load("//js/private:maybe.bzl", http_archive = "maybe_http_archive")

# buildifier: disable=function-docstring
def rules_js_dependencies():
    http_archive(
        name = "bazel_skylib",
        sha256 = "9f38886a40548c6e96c106b752f242130ee11aaa068a56ba7e56f4511f33e4f2",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.6.1/bazel-skylib-1.6.1.tar.gz"],
    )

    http_archive(
        name = "rules_nodejs",
        sha256 = "3e8369256ad63197959d2253c473a9dcc57c2841d176190e59b91d25d4fe9e67",
        strip_prefix = "rules_nodejs-6.1.1",
        url = "https://github.com/bazelbuild/rules_nodejs/releases/download/v6.1.1/rules_nodejs-v6.1.1.tar.gz",
    )

    http_archive(
        name = "aspect_bazel_lib",
        sha256 = "b59781939f40c8bf148f4a71bd06e3027e15e40e98143ea5688b83531ec8528f",
        strip_prefix = "bazel-lib-2.7.6",
        url = "https://github.com/aspect-build/bazel-lib/releases/download/v2.7.6/bazel-lib-v2.7.6.tar.gz",
    )
