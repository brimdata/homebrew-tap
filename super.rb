class Super < Formula
  desc "Query and search data in files or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/727a84d.zip"
  sha256 "c56255af9871e5752f78d06b037ce72b51ae14e520f0ff0e2c8f020b0e48e471"
  version "727a84d"

  depends_on "go@1.23" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@727a84d"
    bin.install "build/bin/super"
  end
end
