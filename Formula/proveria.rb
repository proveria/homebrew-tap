class Proveria < Formula
  desc "CLI for local hashing, attestations, receipts, and API workflows"
  homepage "https://github.com/proveria/proveria-cli"

  on_macos do
    on_arm do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.2/proveria-aarch64-apple-darwin.tar.gz"
      sha256 "5e3711a8bbe74f9d423ea15b8580c2f69f6a432bf7db59678216833c5aaa3db2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.2/proveria-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9a12656556958ba7628a83f02d1ac0aa7cc12800e518d5ee096c02ed93890fa"
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
