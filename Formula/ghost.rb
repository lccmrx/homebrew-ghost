class Ghost < Formula
  desc "Simple local DNS + proxy manager"
  homepage "https://github.com/lccmrx/ghost"
  version "0.0.5"
  url "https://github.com/lccmrx/ghost/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "f28e2ec6f7268b021a342bdb650de61b048e7ab24229e42ef541b0c5d285ef2b"
  license "Apache"

  depends_on "go" => :build

  def install
    system "go", "build", "ghost.go"
    bin.install "ghost"
  end
end
