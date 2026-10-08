class Yorker < Formula
  desc "Precision synthetic monitoring as code"
  homepage "https://yorkermonitoring.com"
  url "https://registry.npmjs.org/@yorker/cli/-/cli-0.8.0.tgz"
  sha256 "939c65c152e71a9d47adf90dce0842344863bc3789afe663097e708cd04efe71"
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
