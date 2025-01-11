class Super < Formula
  desc "Query and search data in files or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/55d99d3.zip"
  sha256 "e286e4c49f1b3069ae2112395f1165863c806afcb51087d7ae2f162b063ab48e"
  version "55d99d3"

  depends_on "go@1.23" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@55d99d3"
    bin.install "build/bin/super"
  end
end
