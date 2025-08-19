class Super < Formula
  desc "An analytics database that fuses structured and semi-structured data"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/4130d71.zip"
  sha256 "3310943cf50523b83c9e5d0a0107f61e03c3f3462d52ab4f48e1c7b62a44cdfa"
  version "4130d71"

  depends_on "go@1.24" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@4130d71"
    bin.install "build/bin/super"
  end
end
