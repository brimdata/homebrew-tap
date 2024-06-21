# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zed < Formula
  desc "A command-line tool for creating, configuring, ingesting into, querying,
and orchestrating Zed data lakes.
"
  homepage "https://github.com/brimdata/zed"
  version "1.16.0"

  on_macos do
    on_intel do
      url "https://github.com/brimdata/zed/releases/download/v1.16.0/zed-v1.16.0.darwin-amd64.tar.gz"
      sha256 "6a6c00b9b4639dec5400105551ccd2c5a681379a7be0d370cd4609043c45c952"

      def install
        bin.install "zed"
      end
    end
    on_arm do
      url "https://github.com/brimdata/zed/releases/download/v1.16.0/zed-v1.16.0.darwin-arm64.tar.gz"
      sha256 "4ce2cc17bea9990fc5aa2ac6bebf42f6bcd81fedc6262496ec8bc8d06c3424c5"

      def install
        bin.install "zed"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/brimdata/zed/releases/download/v1.16.0/zed-v1.16.0.linux-amd64.tar.gz"
        sha256 "3ef0c59e1d14c83464ec05174109f7ff6a0a0c1cba36f8703036b3e76b9769e2"

        def install
          bin.install "zed"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/brimdata/zed/releases/download/v1.16.0/zed-v1.16.0.linux-arm64.tar.gz"
        sha256 "444cd69779ed20a3badf722524d359457f1bfc7e7e198c761383d35af1f2f789"

        def install
          bin.install "zed"
        end
      end
    end
  end
end
