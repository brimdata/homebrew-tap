# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zq < Formula
  desc "A command-line tool for processing data in diverse input formats,
providing search, analytics, and extensive transormations using the Zed
query language.
"
  homepage "https://github.com/brimdata/zed"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brimdata/zed/releases/download/v1.9.0/zed-v1.9.0.darwin-amd64.tar.gz"
      sha256 "80899bde5f26e5f5798c3fc7ac29f1fa4784ff24a7535c1fb6693bf0948ef8dc"

      def install
        bin.install "zq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/brimdata/zed/releases/download/v1.9.0/zed-v1.9.0.darwin-arm64.tar.gz"
      sha256 "2b45eccd0bd49a1cb00dfec072956863ed1247e5e08d1e3593030cb54a31884d"

      def install
        bin.install "zq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brimdata/zed/releases/download/v1.9.0/zed-v1.9.0.linux-arm64.tar.gz"
      sha256 "c63e2382f6ae34c896048191796037dfe5a39191251f522943a78e59eb1c2d15"

      def install
        bin.install "zq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brimdata/zed/releases/download/v1.9.0/zed-v1.9.0.linux-amd64.tar.gz"
      sha256 "cf7a12d5825fe42e3908ce49fa551266782285dad4b886f3712ef447d942af9c"

      def install
        bin.install "zq"
      end
    end
  end
end
