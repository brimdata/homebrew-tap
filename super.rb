class Super < Formula
  desc "Query and search data in files or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/2f1a964.zip"
  sha256 "238d9751c906ff823c01ffe0ec1d439ed9df4e0e05029cb4514d376b364ac880"
  version "2f1a964"

  depends_on "go@1.23" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@2f1a964"
    bin.install "build/bin/super"
  end
end
