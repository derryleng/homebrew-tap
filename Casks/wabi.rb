cask "wabi" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
