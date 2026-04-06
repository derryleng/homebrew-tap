class MenubarGuard < Formula
  desc "Prevent the macOS cursor from straying into the menu bar"
  homepage "https://github.com/derryleng/menubar-guard"
  url "https://github.com/derryleng/menubar-guard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on :macos
  depends_on xcode: ["14.0", :build]

  def install
    system "swiftc", "-O", "-o", "menubar-guard", "main.swift", "-framework", "Cocoa"
    bin.install "menubar-guard"
  end

  def caveats
    <<~EOS
      menubar-guard requires Accessibility permission to function.
      Grant access in:
        System Settings > Privacy & Security > Accessibility
    EOS
  end
end
