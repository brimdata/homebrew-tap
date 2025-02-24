class Super < Formula
  desc "Query and search data in files or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/f55d7bd.zip"
  sha256 "421c8310c440e9e0375df5e65e7886da4e0a7714a1181e29f4a1ae2d055ab84a"
  version "f55d7bd"

  depends_on "go@1.23" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@f55d7bd"
    bin.install "build/bin/super"
  end
end
