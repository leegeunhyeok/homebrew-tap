class SourcemapExplorer < Formula
  desc "Rust based sourcemap explorer for command-line interface"
  homepage "https://github.com/leegeunhyeok/sourcemap-explorer"
  version "1.0.0-alpha.3"

  if Hardware::CPU.intel?
    url "https://github.com/leegeunhyeok/sourcemap-explorer/releases/download/#{version}/sourcemap-explorer-x86_64-apple-darwin.tar.gz"
    sha256 "454fed4fd90c9feb8af95aa8a1159584f05e82a4c7bfb1711f9a8de119b8891e"
  elsif Hardware::CPU.arm?
    url "https://github.com/leegeunhyeok/sourcemap-explorer/releases/download/#{version}/sourcemap-explorer-aarch64-apple-darwin.tar.gz"
    sha256 "7c15c6435ef52af2f5b01cba56d40e3a817fe489573494a0442c09d01f799acf"
  end

  def install
    bin.install "smx"
  end
end
