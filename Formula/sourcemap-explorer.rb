class SourcemapExplorer < Formula
  desc "Rust based sourcemap explorer for command-line interface"
  homepage "https://github.com/leegeunhyeok/sourcemap-explorer"
  version "1.0.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/leegeunhyeok/sourcemap-explorer/releases/download/#{version}/sourcemap-explorer-x86_64-apple-darwin.tar.gz"
    sha256 "b2897777e6e3c4d025504d38b400bae85d24469a2f5a1ce6946a32bb816c407a"
  elsif Hardware::CPU.arm?
    url "https://github.com/leegeunhyeok/sourcemap-explorer/releases/download/#{version}/sourcemap-explorer-aarch64-apple-darwin.tar.gz"
    sha256 "676ba9dc6ac498d119ba18af72ff227943a0792d94c1edec54fffdbd09583fd5"
  end

  def install
    bin.install "smx"
  end
end
