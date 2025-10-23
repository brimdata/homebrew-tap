class Super < Formula
  desc "Deprecated - use 'brew install --cask brimdata/tap/super' instead"
  homepage "https://superdb.org"
  url "https://raw.githubusercontent.com/brimdata/super/refs/heads/main/LICENSE.txt"
  sha256 "1b37b0c058da81d58ff531c34a564078588849614ee0afd48cccb99c7747ebcf"
  version "9999999"

  def install
    (bin/"super").write <<~EOS
      #!/bin/bash
      echo "This formula has been replaced by a cask."
      echo "Please run: brew uninstall --force super && brew install --cask brimdata/tap/super"
      exit 1
    EOS
  end
end
