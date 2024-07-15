# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zq < Formula
  desc "A command-line tool for processing data in diverse input formats,
providing search, analytics, and extensive transormations using the Zed
query language.
"
  homepage "https://github.com/brimdata/zed"
  version "1.17.0"

  on_macos do
    on_intel do
      url "https://github.com/brimdata/zed/releases/download/v1.17.0/zed-v1.17.0.darwin-amd64.tar.gz"
      sha256 "f48e4ef4982264d18a00d2dabf49d270e9ebe9d61da0f110175f55283e325a21"

      def install
        bin.install "zq"
      end
    end
    on_arm do
      url "https://github.com/brimdata/zed/releases/download/v1.17.0/zed-v1.17.0.darwin-arm64.tar.gz"
      sha256 "28b932891d7d90b9336be7de4d7b4f0dbf280b652f96a48b9d3f6074d29b40ed"

      def install
        bin.install "zq"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/brimdata/zed/releases/download/v1.17.0/zed-v1.17.0.linux-amd64.tar.gz"
        sha256 "c179da8afbe70eb37fa0018e77f43cc39e734879803c0fb30e120b928b102138"

        def install
          bin.install "zq"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/brimdata/zed/releases/download/v1.17.0/zed-v1.17.0.linux-arm64.tar.gz"
        sha256 "3480900fd8d33e0d20bdb82e3f2d9d89d66e472de76b2c7424aa903783e3fbeb"

        def install
          bin.install "zq"
        end
      end
    end
  end
end
