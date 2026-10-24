class DotifyCli < Formula
  desc "Headless Dotify project editing and PNG export"
  homepage "https://github.com/mdenizay/dotify"
  url "https://github.com/mdenizay/dotify/releases/download/v0.1.0/dotify-cli-0.1.0-macos-arm64.tar.gz"
  sha256 "c0f14a99faa1c6e3fbd6439c72691be4313fb2bf536f108c86ac3460c7508a00"
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
