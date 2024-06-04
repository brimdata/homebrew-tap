# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zync < Formula
  desc "Kafka connector to sync Zed lakes to and from Kafka topics
"
  homepage "https://github.com/brimdata/zync"
  version "0.10.0"

  on_macos do
    on_intel do
      url "https://github.com/brimdata/zync/releases/download/v0.10.0/zync-v0.10.0.darwin-amd64.tar.gz"
      sha256 "19247967b82500fd243970cd06079eaf04cd0633e30329b960e80260f1488d2e"

      def install
        bin.install "zync"
      end
    end
    on_arm do
      url "https://github.com/brimdata/zync/releases/download/v0.10.0/zync-v0.10.0.darwin-arm64.tar.gz"
      sha256 "a10bc5b2e1cea25104bcf9899d920c854524c47eaf667a51556b9ef2d5121a4d"

      def install
        bin.install "zync"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/brimdata/zync/releases/download/v0.10.0/zync-v0.10.0.linux-amd64.tar.gz"
        sha256 "1651ddf7117c661dee95fca159a3eb53739a73028a12a1e527c0619a63687bc4"

        def install
          bin.install "zync"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/brimdata/zync/releases/download/v0.10.0/zync-v0.10.0.linux-arm64.tar.gz"
        sha256 "23fa37fd755b13426f6eff0337c3b21eaa66069c52905ba14c61ba152331839a"

        def install
          bin.install "zync"
        end
      end
    end
  end
end