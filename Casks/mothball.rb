cask "mothball" do
  version "0.1.1"
  sha256 "f5f03a987dd5a38d66797cb8ba2e51eb0e1fb420ce86d6481a9e82cf6c2894cc"

  url "https://github.com/herocodess/mothball/releases/download/v#{version}/Mothball-#{version}.dmg"
  name "Mothball"
  desc "Put idle projects away, get your disk back"
  homepage "https://github.com/herocodess/mothball"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mothball.app"
  binary "#{appdir}/Mothball.app/Contents/Library/LoginItems/Mothball Agent.app/Contents/MacOS/mothball"

  uninstall_preflight do
    system_command "#{appdir}/Mothball.app/Contents/Library/LoginItems/Mothball Agent.app/Contents/MacOS/mothball",
                   args:         ["service", "uninstall"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/mothball",
    "~/Library/LaunchAgents/dev.mothball.service.plist",
  ]
end
