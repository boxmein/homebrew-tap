# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DevRunner < Formula
  desc "dev runner"
  homepage "https://github.com/boxmein/dev-runner"
  url "https://github.com/boxmein/dev-runner/archive/refs/heads/master.zip"
  version "1.0.0"
  sha256 ""
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system 'cargo', 'test', *std_cardo_args
  end
end
