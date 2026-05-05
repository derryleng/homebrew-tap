cask "wabi" do
  version "1.0.1"
  sha256 "fb7422a09def6155fe8e5ed92aa7797902e4da30cadc05e969b3959352ef1a98"

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
