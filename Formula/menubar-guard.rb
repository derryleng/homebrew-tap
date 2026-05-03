class MenubarGuard < Formula
  desc "Prevent the macOS cursor from straying into the menu bar"
  homepage "https://github.com/derryleng/menubar-guard"
  url "https://github.com/derryleng/menubar-guard/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "bfef4220b1f75c9eeb4752d10e4489a06a1a836df110e8d624622569c14b275d"
  license "MIT"

  depends_on :macos

  def install
    system ENV.cc, "-O2", "-o", "menubar-guard", "main.c",
           "-framework", "ApplicationServices",
           "-framework", "CoreFoundation"
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
