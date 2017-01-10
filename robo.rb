class Robo < Formula
  desc "YAML based task runner"
  homepage "https://github.com/tj/robo"
  version "0.4.0"
  url "https://github.com/tj/robo/releases/download/v#{version}/robo_darwin_amd64"
  sha256 "380dd262ba585cd0f54e2e7c6aa91dac0cf7b32545544de6eae003a7dcdf0928"

  def install
    system "chmod 755 robo_darwin_amd64"
    system "mv robo_darwin_amd64 robo"
    bin.install "./robo"
  end

  test do
    system "#{bin}/robo --version"
  end
end
