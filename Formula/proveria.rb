class Proveria < Formula
  desc "CLI for local hashing, attestations, receipts, and API workflows"
  homepage "https://github.com/proveria/proveria-cli"

  on_macos do
    on_arm do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.3/proveria-aarch64-apple-darwin.tar.gz"
      sha256 "bd0653cdea89990cc888519b561a27ba5c621f825614c93c4b2e66d3aad3b32a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.3/proveria-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "657e47daa34bb3e6a8eb3ddb51b5809753589d047b0efcf4abd6f0c6ec619f71"
    end
  end

  def install
    bin.install "proveria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/proveria --version")
    assert_match "proof records", shell_output("#{bin}/proveria --help")
  end
end
