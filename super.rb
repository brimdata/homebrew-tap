class Super < Formula
  desc "Query and search data in files or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/0cb66f4.zip"
  sha256 "24d7afc4a430744fd65f01a89b01553bb5d895d990771199fa9b4e415ab66edb"
  version "0cb66f4"

  depends_on "go@1.24" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@0cb66f4"
    bin.install "build/bin/super"
  end
end
