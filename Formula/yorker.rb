class Yorker < Formula
  desc "Precision synthetic monitoring as code"
  homepage "https://yorkermonitoring.com"
  url "https://registry.npmjs.org/@yorker/cli/-/cli-0.9.0.tgz"
  sha256 "2e7807f5dfa459359833f9084809dd3e205c9b0381bd70b21a6fcadb49bcbba7"
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
