# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zq < Formula
  desc "A command-line tool for processing data in diverse input formats,
providing search, analytics, and extensive transormations using the Zed
query language.
"
  homepage "https://github.com/brimdata/zed"
  version "1.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brimdata/zed/releases/download/v1.13.0/zed-v1.13.0.darwin-arm64.tar.gz"
      sha256 "44dc2948fa91c40691e2185140e70acc329aa7a7fe21cb8de59b186ba54dd658"

      def install
        bin.install "zq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brimdata/zed/releases/download/v1.13.0/zed-v1.13.0.darwin-amd64.tar.gz"
      sha256 "3a13a999eef6727bfb966ba8dc100a86e85cbdcfa8fd1ad3bec520edf666a6b6"

      def install
        bin.install "zq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brimdata/zed/releases/download/v1.13.0/zed-v1.13.0.linux-arm64.tar.gz"
      sha256 "a7d6832a71919fc0e8a6f0953a9e08a5c7e0c84c5bc618b98bff79cc09d506a4"

      def install
        bin.install "zq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brimdata/zed/releases/download/v1.13.0/zed-v1.13.0.linux-amd64.tar.gz"
      sha256 "4ffe249eb34f3ec90d219441d08afc71d6a45034b74c600cd4d3e94617c92115"

      def install
        bin.install "zq"
      end
    end
  end
end
