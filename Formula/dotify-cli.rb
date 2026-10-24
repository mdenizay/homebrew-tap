class DotifyCli < Formula
  desc "Headless Dotify project editing and PNG export"
  homepage "https://github.com/mdenizay/dotify"
  url "https://github.com/mdenizay/dotify/releases/download/v0.1.1/dotify-cli-0.1.1-macos-arm64.tar.gz"
  sha256 "b7ba9a93e9c059348909855b0c7386dfbfc69a1752739b897cabbd08b70ee15e"
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
