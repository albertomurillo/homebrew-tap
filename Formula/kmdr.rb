require "language/node"

class Kmdr < Formula
  desc "A command-line interface for explaining commands in the terminal"
  homepage "https://kmdr.sh/"
  url "https://registry.npmjs.org/kmdr/-/kmdr-0.1.27.tgz"
  version "0.1.27"
  sha256 "cac4104801d66efa72e06da4d3a1e8743a7f74d3acf9469f34585c276032f493"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "true"
  end
end
