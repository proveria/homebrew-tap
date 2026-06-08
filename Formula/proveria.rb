class Proveria < Formula
  desc "CLI for local hashing, attestations, receipts, and API workflows"
  homepage "https://github.com/proveria/proveria-cli"

  on_macos do
    on_arm do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.0/proveria-aarch64-apple-darwin.tar.gz"
      sha256 "b0c6dcdd7555d4c215a0d1d92a392fe6e5da269f1a5a8c4e8838644a6fa87567"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/proveria/proveria-cli/releases/download/proveria-cli-v0.1.0/proveria-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f9b7a3804f35cdbdc9fbcb3ae569394f76dcb31325623d503acfcbaeb1548c9"
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
