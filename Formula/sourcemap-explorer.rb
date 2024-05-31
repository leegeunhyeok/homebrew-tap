class SourcemapExplorer < Formula
  desc "Rust based sourcemap explorer for command-line interface"
  homepage "https://github.com/leegeunhyeok/sourcemap-explorer"
  version "1.0.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/leegeunhyeok/sourcemap-explorer/releases/download/1.0.0-alpha.2/sourcemap-explorer-x86_64-apple-darwin.tar.gz"
    sha256 "b4fcbeb0c68b293d18c70225f649232583dc8e6477d7bf858627636b4417d34d"
  elsif Hardware::CPU.arm?
    url "https://github.com/leegeunhyeok/sourcemap-explorer/releases/download/1.0.0-alpha.2/sourcemap-explorer-aarch64-apple-darwin.tar.gz"
    sha256 "3a7ff8d7981e15073a757599c0d4dd7b49e1aeecddd696a31f88edcb42f95291"
  end

  def install
    bin.install "smx"
  end
end
