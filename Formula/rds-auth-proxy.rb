class RdsAuthProxy < Formula
  desc 'A passwordless login experience for your AWS RDS'
  homepage 'https://mothership.github.io/rds-auth-proxy/'
  version 'v0.1.1'
  license 'MIT'
  bottle :unnedded

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/mothership/rds-auth-proxy/releases/download/v0.1.1/rds-auth-proxy_darwin_amd64.tar.gz'
      sha256 '2635ba714c9bf91eb9ddd9d6530476d267827b8f61ac8d6a29557e64a9b42905'
    end
    if Hardware::CPU.arm?
      url 'https://github.com/mothership/rds-auth-proxy/releases/download/v0.1.1/rds-auth-proxy_darwin_arm64.tar.gz'
      sha256 '66179ba72803668cd69e2e589bb5618579e2d56cab70e0c48767abfc16e43985'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/mothership/rds-auth-proxy/releases/download/v0.1.1/rds-auth-proxy_linux_amd64.tar.gz'
      sha256 'b2bc09d2a256feb4319959572c78d9aa5c945a1087b1daeeb90ca6a0a0ebca02'
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mothership/rds-auth-proxy/releases/download/v0.1.1/rds-auth-proxy_linux_arm64.tar.gz'
      sha256 'e8998feda462db420c79d42a394d920e8bdbe32dc5e2a173f00d03f603f73e37'
    end
  end

  def install
    bin.install 'rds-auth-proxy'
  end

  test do
    system '{bin}/rds-auth-proxy --version'
  end
end
