class Yorker < Formula
  desc "Precision synthetic monitoring as code"
  homepage "https://yorkermonitoring.com"
  url "https://registry.npmjs.org/@yorker/cli/-/cli-0.7.1.tgz"
  sha256 "5d65611129abc136960ee95425d7aefa018bcb22cfe58abc138c5bcf1b9803e2"
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
