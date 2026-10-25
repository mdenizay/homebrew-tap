class DotifyCli < Formula
  desc "Headless Dotify project editing and PNG export"
  homepage "https://github.com/mdenizay/dotify"
  url "https://github.com/mdenizay/dotify/releases/download/v0.1.3/dotify-cli-0.1.3-macos-arm64.tar.gz"
  sha256 "bbc7ddbd1d2cd347e02aefe09bed995aa8ab749d78030df55ebb40cc23a7970e"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dotify"
  end

  test do
    system bin/"dotify", "new", testpath/"t.dotify", "--width", "4", "--height", "3"
    assert_match '"height": 3', shell_output("#{bin}/dotify info #{testpath}/t.dotify")
  end
end
