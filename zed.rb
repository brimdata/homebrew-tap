# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zed < Formula
  desc "A command-line tool for creating, configuring, ingesting into, querying,
and orchestrating Zed data lakes.
"
  homepage "https://github.com/brimdata/zed"
  version "1.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brimdata/zed/releases/download/v1.14.0/zed-v1.14.0.darwin-arm64.tar.gz"
      sha256 "c98eb85f653633c67c6d841ea5828b3868db7b2687f7123bcd285d82bdf2483e"

      def install
        bin.install "zed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brimdata/zed/releases/download/v1.14.0/zed-v1.14.0.darwin-amd64.tar.gz"
      sha256 "38059144279b34d9f5506f08c0c20c4eafdd704865924fd78f63e35ea7297034"

      def install
        bin.install "zed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brimdata/zed/releases/download/v1.14.0/zed-v1.14.0.linux-arm64.tar.gz"
      sha256 "4fe1e3284b620f3a0d0f0f92fad4e75aa59324cd372d4bac0336e21dc8d57cba"

      def install
        bin.install "zed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brimdata/zed/releases/download/v1.14.0/zed-v1.14.0.linux-amd64.tar.gz"
      sha256 "a09bae78d94e47a1e2c3d3a9459bcfe1097d00ab6b7477a37cf2a5dae5d46c63"

      def install
        bin.install "zed"
      end
    end
  end
end
