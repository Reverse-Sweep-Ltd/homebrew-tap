class Yorker < Formula
  desc "Precision synthetic monitoring as code"
  homepage "https://yorkermonitoring.com"
  url "https://registry.npmjs.org/@yorker/cli/-/cli-0.9.1.tgz"
  sha256 "b72ce0d4a3b6ea0b23c1942fec99b8bcf8d864d1e5f44f56a3966e1af606aaee"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yorker --version")
  end
end
