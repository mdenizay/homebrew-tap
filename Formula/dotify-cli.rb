class DotifyCli < Formula
  desc "Headless Dotify project editing, export and MCP server"
  homepage "https://github.com/mdenizay/dotify"
  url "https://github.com/mdenizay/dotify/releases/download/v0.1.5/dotify-cli-0.1.5-macos-arm64.tar.gz"
  sha256 "2f5e3ae617aab9f45a66a2e677d5f9a2217e7f7723b9975d968ac0fc633909dc"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dotify", "dotify-mcp"
  end

  test do
    system bin/"dotify", "new", testpath/"t.dotify", "--width", "4", "--height", "3"
    assert_match '"height": 3', shell_output("#{bin}/dotify info #{testpath}/t.dotify")
    assert_match version.to_s, shell_output("#{bin}/dotify-mcp --version")
    assert_equal 64, shell_output("#{bin}/dotify-mcp token").strip.length
  end
end
