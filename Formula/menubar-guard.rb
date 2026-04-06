class MenubarGuard < Formula
  desc "Prevent the macOS cursor from straying into the menu bar"
  homepage "https://github.com/derryleng/menubar-guard"
  url "https://github.com/derryleng/menubar-guard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f9f5455000db651c1399252f9f9fd2320efc2d040ba64b395f163f5098bf9a08"
  license "MIT"

  depends_on :macos
  depends_on xcode: ["14.0", :build]

  def install
    system "swiftc", "-O", "-o", "menubar-guard", "main.swift", "-framework", "Cocoa"
    bin.install "menubar-guard"
  end

  service do
    run opt_bin/"menubar-guard"
    keep_alive true
    log_path var/"log/menubar-guard.log"
    error_log_path var/"log/menubar-guard.log"
  end

  def caveats
    <<~EOS
      menubar-guard requires Accessibility permission to function.
      Grant access in:
        System Settings > Privacy & Security > Accessibility

      To start menubar-guard and enable it at login:
        brew services start derryleng/tap/menubar-guard
    EOS
  end
end
