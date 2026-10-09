class Yorker < Formula
  desc "Precision synthetic monitoring as code"
  homepage "https://yorkermonitoring.com"
  url "https://registry.npmjs.org/@yorker/cli/-/cli-0.10.1.tgz"
  sha256 "f7e57e76cfa0ef2d46e9d1bfa11bd0d68bff11e642fd3a589b3e81409b7440c7"
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
