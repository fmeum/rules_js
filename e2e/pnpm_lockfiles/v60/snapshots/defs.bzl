"""@generated by npm_translate_lock(name = "lock-<LOCKVERSION>", pnpm_lock = "@@//<LOCKVERSION>:pnpm-lock.yaml")"""

# buildifier: disable=bzl-visibility
load("@aspect_rules_js//js:defs.bzl", _js_library = "js_library")
load("@aspect_rules_js//npm/private:npm_link_package_store.bzl", _npm_link_package_store = "npm_link_package_store")
load("@aspect_rules_js//npm/private:npm_package_store.bzl", _npm_package_store = "npm_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_aspect-test_a__5.0.2__links//:defs.bzl", link_0 = "npm_link_imported_package_store", store_0 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_aspect-test_b__5.0.2__links//:defs.bzl", link_1 = "npm_link_imported_package_store", store_1 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_aspect-test_c__2.0.0__links//:defs.bzl", link_2 = "npm_link_imported_package_store", store_2 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_aspect-test_c__2.0.2__links//:defs.bzl", store_3 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_aspect-test_d__2.0.0__at_aspect-test_c_2.0.2__links//:defs.bzl", store_4 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_aspect-test_e__1.0.0__links//:defs.bzl", link_5 = "npm_link_imported_package_store", store_5 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__dequal__2.0.3__links//:defs.bzl", store_6 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__diff__5.2.0__links//:defs.bzl", store_7 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__fsevents__2.3.3__links//:defs.bzl", store_8 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__kleur__4.1.5__links//:defs.bzl", store_9 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__meaning-of-life__1.0.0__o3deharooos255qt5xdujc3cuq__links//:defs.bzl", link_10 = "npm_link_imported_package_store", store_10 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__mri__1.2.0__links//:defs.bzl", store_11 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__rollup__3.2.5__links//:defs.bzl", link_12 = "npm_link_imported_package_store", store_12 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__sade__1.8.1__links//:defs.bzl", store_13 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__uvu__0.5.6__links//:defs.bzl", link_14 = "npm_link_imported_package_store", store_14 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_types_archiver__registry.npmjs.org_at_types_archiver_5.3.1__links//:defs.bzl", link_15 = "npm_link_imported_package_store", store_15 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_types_glob__registry.npmjs.org_at_types_glob_8.1.0__links//:defs.bzl", store_16 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_types_minimatch__registry.npmjs.org_at_types_minimatch_5.1.2__links//:defs.bzl", store_17 = "npm_imported_package_store")
load("@@aspect_rules_js~~npm~lock-<LOCKVERSION>__at_types_node__registry.npmjs.org_at_types_node_16.18.11__links//:defs.bzl", link_18 = "npm_link_imported_package_store", store_18 = "npm_imported_package_store")

_LINK_PACKAGES = ["<LOCKVERSION>", "projects/a", "projects/b", "projects/c", "projects/d"]

# buildifier: disable=function-docstring
def npm_link_all_packages(name = "node_modules", imported_links = []):
    root_package = "<LOCKVERSION>"
    bazel_package = native.package_name()
    is_root = bazel_package == root_package
    link = bazel_package in _LINK_PACKAGES
    if not is_root and not link:
        msg = "The npm_link_all_packages() macro loaded from @aspect_rules_js~~npm~lock-<LOCKVERSION>//:defs.bzl and called in bazel package '%s' may only be called in bazel packages that correspond to the pnpm root package or pnpm workspace projects. Projects are discovered from the pnpm-lock.yaml and may be missing if the lockfile is out of date. Root package: '<LOCKVERSION>', pnpm workspace projects: %s" % (native.package_name(), "'" + "', '".join(_LINK_PACKAGES) + "'")
        fail(msg)
    link_targets = []
    scope_targets = {}

    for link_fn in imported_links:
        new_link_targets, new_scope_targets = link_fn(name)
        link_targets.extend(new_link_targets)
        for _scope, _targets in new_scope_targets.items():
            scope_targets[_scope] = scope_targets[_scope] + _targets if _scope in scope_targets else _targets

    if is_root:
        store_0(name = "{}/@aspect-test/a".format(name))
        store_1(name = "{}/@aspect-test/b".format(name))
        store_2(name = "{}/@aspect-test/c".format(name))
        store_3(name = "{}/@aspect-test/c".format(name))
        store_4(name = "{}/@aspect-test/d".format(name))
        store_5(name = "{}/@aspect-test/e".format(name))
        store_6(name = "{}/dequal".format(name))
        store_7(name = "{}/diff".format(name))
        store_8(name = "{}/fsevents".format(name))
        store_9(name = "{}/kleur".format(name))
        store_10(name = "{}/meaning-of-life".format(name))
        store_11(name = "{}/mri".format(name))
        store_12(name = "{}/rollup".format(name))
        store_13(name = "{}/sade".format(name))
        store_14(name = "{}/uvu".format(name))
        store_15(name = "{}/@types/archiver".format(name))
        store_16(name = "{}/@types/glob".format(name))
        store_17(name = "{}/@types/minimatch".format(name))
        store_18(name = "{}/@types/node".format(name))
    if link:
        if bazel_package == "<LOCKVERSION>":
            link_0(name = "{}/@aspect-test/a".format(name))
            link_targets.append("//{}:{}/@aspect-test/a".format(bazel_package, name))
            scope_targets["@aspect-test"] = scope_targets["@aspect-test"] + [link_targets[-1]] if "@aspect-test" in scope_targets else [link_targets[-1]]
            link_1(name = "{}/@aspect-test/b".format(name))
            link_targets.append("//{}:{}/@aspect-test/b".format(bazel_package, name))
            scope_targets["@aspect-test"] = scope_targets["@aspect-test"] + [link_targets[-1]] if "@aspect-test" in scope_targets else [link_targets[-1]]
            link_2(name = "{}/@aspect-test/c".format(name))
            link_targets.append("//{}:{}/@aspect-test/c".format(bazel_package, name))
            scope_targets["@aspect-test"] = scope_targets["@aspect-test"] + [link_targets[-1]] if "@aspect-test" in scope_targets else [link_targets[-1]]
            link_5(name = "{}/@aspect-test/e".format(name))
            link_targets.append("//{}:{}/@aspect-test/e".format(bazel_package, name))
            scope_targets["@aspect-test"] = scope_targets["@aspect-test"] + [link_targets[-1]] if "@aspect-test" in scope_targets else [link_targets[-1]]
            link_10(name = "{}/meaning-of-life".format(name))
            link_targets.append("//{}:{}/meaning-of-life".format(bazel_package, name))
            link_12(name = "{}/rollup".format(name))
            link_targets.append("//{}:{}/rollup".format(bazel_package, name))
            link_14(name = "{}/uvu".format(name))
            link_targets.append("//{}:{}/uvu".format(bazel_package, name))
            link_15(name = "{}/@types/archiver".format(name))
            link_targets.append("//{}:{}/@types/archiver".format(bazel_package, name))
            scope_targets["@types"] = scope_targets["@types"] + [link_targets[-1]] if "@types" in scope_targets else [link_targets[-1]]
            link_18(name = "{}/@types/node".format(name))
            link_targets.append("//{}:{}/@types/node".format(bazel_package, name))
            scope_targets["@types"] = scope_targets["@types"] + [link_targets[-1]] if "@types" in scope_targets else [link_targets[-1]]

    if is_root:
        _npm_package_store(
            name = ".aspect_rules_js/{}/@scoped+c@0.0.0".format(name),
            src = "//projects/c:pkg",
            package = "@scoped/c",
            version = "0.0.0",
            deps = {
                "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+a@0.0.0".format(name): "@scoped/a",
            },
            visibility = ["//visibility:public"],
            tags = ["manual"],
        )

    for link_package in ["<LOCKVERSION>"]:
        if link_package == native.package_name():
            # terminal target for direct dependencies
            _npm_link_package_store(
                name = "{}/@scoped/c".format(name),
                src = "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+c@0.0.0".format(name),
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )

            # filegroup target that provides a single file which is
            # package directory for use in $(execpath) and $(rootpath)
            native.filegroup(
                name = "{}/@scoped/c/dir".format(name),
                srcs = [":{}/@scoped/c".format(name)],
                output_group = "package_directory",
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )
            link_targets.append(":{}/@scoped/c".format(name))
            scope_targets["@scoped"] = scope_targets["@scoped"] + [link_targets[-1]] if "@scoped" in scope_targets else [link_targets[-1]]

    if is_root:
        _npm_package_store(
            name = ".aspect_rules_js/{}/@scoped+a@0.0.0".format(name),
            src = "//projects/a:pkg",
            package = "@scoped/a",
            version = "0.0.0",
            deps = {},
            visibility = ["//visibility:public"],
            tags = ["manual"],
        )

    for link_package in ["<LOCKVERSION>", "projects/b", "projects/c", "projects/d"]:
        if link_package == native.package_name():
            # terminal target for direct dependencies
            _npm_link_package_store(
                name = "{}/@scoped/a".format(name),
                src = "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+a@0.0.0".format(name),
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )

            # filegroup target that provides a single file which is
            # package directory for use in $(execpath) and $(rootpath)
            native.filegroup(
                name = "{}/@scoped/a/dir".format(name),
                srcs = [":{}/@scoped/a".format(name)],
                output_group = "package_directory",
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )
            link_targets.append(":{}/@scoped/a".format(name))
            scope_targets["@scoped"] = scope_targets["@scoped"] + [link_targets[-1]] if "@scoped" in scope_targets else [link_targets[-1]]

    if is_root:
        _npm_package_store(
            name = ".aspect_rules_js/{}/@scoped+b@0.0.0".format(name),
            src = "//projects/b:pkg",
            package = "@scoped/b",
            version = "0.0.0",
            deps = {
                "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+a@0.0.0".format(name): "@scoped/a",
            },
            visibility = ["//visibility:public"],
            tags = ["manual"],
        )

    for link_package in ["<LOCKVERSION>"]:
        if link_package == native.package_name():
            # terminal target for direct dependencies
            _npm_link_package_store(
                name = "{}/@scoped/b".format(name),
                src = "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+b@0.0.0".format(name),
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )

            # filegroup target that provides a single file which is
            # package directory for use in $(execpath) and $(rootpath)
            native.filegroup(
                name = "{}/@scoped/b/dir".format(name),
                srcs = [":{}/@scoped/b".format(name)],
                output_group = "package_directory",
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )
            link_targets.append(":{}/@scoped/b".format(name))
            scope_targets["@scoped"] = scope_targets["@scoped"] + [link_targets[-1]] if "@scoped" in scope_targets else [link_targets[-1]]

    if is_root:
        _npm_package_store(
            name = ".aspect_rules_js/{}/@scoped+d@0.0.0".format(name),
            src = "//projects/d:pkg",
            package = "@scoped/d",
            version = "0.0.0",
            deps = {
                "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+a@0.0.0".format(name): "@scoped/a",
            },
            visibility = ["//visibility:public"],
            tags = ["manual"],
        )

    for link_package in ["<LOCKVERSION>"]:
        if link_package == native.package_name():
            # terminal target for direct dependencies
            _npm_link_package_store(
                name = "{}/@scoped/d".format(name),
                src = "//<LOCKVERSION>:.aspect_rules_js/{}/@scoped+d@0.0.0".format(name),
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )

            # filegroup target that provides a single file which is
            # package directory for use in $(execpath) and $(rootpath)
            native.filegroup(
                name = "{}/@scoped/d/dir".format(name),
                srcs = [":{}/@scoped/d".format(name)],
                output_group = "package_directory",
                visibility = ["//visibility:public"],
                tags = ["manual"],
            )
            link_targets.append(":{}/@scoped/d".format(name))
            scope_targets["@scoped"] = scope_targets["@scoped"] + [link_targets[-1]] if "@scoped" in scope_targets else [link_targets[-1]]

    for scope, scoped_targets in scope_targets.items():
        _js_library(
            name = "{}/{}".format(name, scope),
            srcs = scoped_targets,
            tags = ["manual"],
            visibility = ["//visibility:public"],
        )

    _js_library(
        name = name,
        srcs = link_targets,
        tags = ["manual"],
        visibility = ["//visibility:public"],
    )

# buildifier: disable=function-docstring
def npm_link_targets(name = "node_modules", package = None):
    bazel_package = package if package != None else native.package_name()
    link = bazel_package in _LINK_PACKAGES

    link_targets = []

    if link:
        if bazel_package == "<LOCKVERSION>":
            link_targets.append("//{}:{}/@aspect-test/a".format(bazel_package, name))
            link_targets.append("//{}:{}/@aspect-test/b".format(bazel_package, name))
            link_targets.append("//{}:{}/@aspect-test/c".format(bazel_package, name))
            link_targets.append("//{}:{}/@aspect-test/e".format(bazel_package, name))
            link_targets.append("//{}:{}/meaning-of-life".format(bazel_package, name))
            link_targets.append("//{}:{}/rollup".format(bazel_package, name))
            link_targets.append("//{}:{}/uvu".format(bazel_package, name))
            link_targets.append("//{}:{}/@types/archiver".format(bazel_package, name))
            link_targets.append("//{}:{}/@types/node".format(bazel_package, name))

    for link_package in ["<LOCKVERSION>"]:
        if link_package == bazel_package:
            link_targets.append("//{}:{}/@scoped/c".format(bazel_package, name))

    for link_package in ["<LOCKVERSION>", "projects/b", "projects/c", "projects/d"]:
        if link_package == bazel_package:
            link_targets.append("//{}:{}/@scoped/a".format(bazel_package, name))

    for link_package in ["<LOCKVERSION>"]:
        if link_package == bazel_package:
            link_targets.append("//{}:{}/@scoped/b".format(bazel_package, name))

    for link_package in ["<LOCKVERSION>"]:
        if link_package == bazel_package:
            link_targets.append("//{}:{}/@scoped/d".format(bazel_package, name))
    return link_targets
