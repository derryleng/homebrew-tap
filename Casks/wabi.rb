cask "wabi" do
  version "1.0.0"
  sha256 "1b285087874bb3e77d14e5fa09a5e701abbef712edf3c5cc6f92a7296b748c94"

  url "https://github.com/derryleng/wabi/releases/download/v#{version}/Wabi.zip"
  name "Wabi"
  desc "Instant desktop switcher with minimal chrome"
  homepage "https://github.com/derryleng/wabi"

  app "Wabi.app"

  caveats <<~EOS
    Wabi requires Accessibility permission to function.
    Grant access in:
      System Settings > Privacy & Security > Accessibility

    Then relaunch Wabi.
  EOS
end
