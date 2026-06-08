class Proveria < Formula
  desc "CLI for local hashing, attestations, receipts, and API workflows"
  homepage "https://github.com/proveria/proveria-cli"

  on_macos do
    on_arm do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.1/proveria-aarch64-apple-darwin.tar.gz"
      sha256 "ca36da61ba9bb14a30c3a2789e01c65ad99920a2cbd75c6d6f67bc59d75b8c7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.1/proveria-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14a84416e34fafce5cb07c10006bc9d09c07a2c8bc391e4d298db5f481a48730"
    end
  end

  def install
    bin.install "proveria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/proveria --version")
    assert_match "Proveria CLI", shell_output("#{bin}/proveria --help")
  end
end
