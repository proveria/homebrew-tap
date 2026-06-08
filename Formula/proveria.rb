class Proveria < Formula
  desc "CLI for local hashing, attestations, receipts, and API workflows"
  homepage "https://github.com/proveria/proveria"

  on_macos do
    on_arm do
      url "https://github.com/proveria/proveria/releases/download/proveria-cli-v0.1.0/proveria-aarch64-apple-darwin.tar.gz"
      sha256 "009d2f6555831c407bb12c2f8e0fbdc52c466453457992af0ee18c3b35f494e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/proveria/proveria/releases/download/proveria-cli-v0.1.0/proveria-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d15505c5bf1dfe442a3db151f5519c03549a197ac05f6900472937c39e22d12"
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
