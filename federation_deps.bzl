"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-12T18:08:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip"
      ],
      strip_prefix = "rules_cc-34ca16f4aa4bf2a5d3e4747229202d6cb630ebab",
      sha256 = "523c59bb3f16518679668594c8874da46872fde05c32ba246bc0a35ec292f8a6",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-05T19:57:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip",
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip"
      ],
      strip_prefix = "rules_python-748aa53d7701e71101dfd15d800e100f6ff8e5d1",
      sha256 = "d3e40ca3b7e00b72d2b1585e0b3396bcce50f0fc692e2b7c91d8b0dc471e3eaf",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-03-23T20:24:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/518f17501e6156f7921fbb9b68a1e420bcb10bc5.zip",
           "https://github.com/abseil/abseil-cpp/archive/518f17501e6156f7921fbb9b68a1e420bcb10bc5.zip"
      ],
      strip_prefix = "abseil-cpp-518f17501e6156f7921fbb9b68a1e420bcb10bc5",
      sha256 = "0baec77dcf13da93038ad6045c87e048a6cc1f5a8ad126091c804acab4a2671a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-03-24T21:32:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/67cc66080d64e3fa5124fe57ed0cf15e2cecfdeb.zip",
           "https://github.com/google/googletest/archive/67cc66080d64e3fa5124fe57ed0cf15e2cecfdeb.zip"
      ],
      strip_prefix = "googletest-67cc66080d64e3fa5124fe57ed0cf15e2cecfdeb",
      sha256 = "c5f83559d9493e8280df08156391f7c3309778172d31ae4518ac5ca5995fe7e6",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-03-16T11:32:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e30cac6b06cf05416a9358df8be868ab01602a68.zip",
           "https://github.com/google/benchmark/archive/e30cac6b06cf05416a9358df8be868ab01602a68.zip"
      ],
      strip_prefix = "benchmark-e30cac6b06cf05416a9358df8be868ab01602a68",
      sha256 = "9557a555f33e52e41737474ff24e3da899ee766271b28366424861f436283800",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-03-24T21:10:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b3480910c006fc7349f0cbbc0221026898104c37.zip",
           "https://github.com/google/tcmalloc/archive/b3480910c006fc7349f0cbbc0221026898104c37.zip"
      ],
      strip_prefix = "tcmalloc-b3480910c006fc7349f0cbbc0221026898104c37",
      sha256 = "5957cf0a510b7f207c94bce5c5fc003d2dbed8c6debeb9f3e6f8966e14d887e7",
    )

    # ********** zlib (pinned to 1.2.11) *****************
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
