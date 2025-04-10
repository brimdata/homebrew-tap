class Super < Formula
  desc "Query and search data in files or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/da56639.zip"
  sha256 "b44eae9937fef284a3a1cb943a450c8acd702328bfdb99431abf59978b63f367"
  version "da56639"

  depends_on "go@1.24" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@da56639"
    bin.install "build/bin/super"
  end
end
