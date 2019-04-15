
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/project-creator/1.0.04152019131524/project-creator-1.0.04152019131524.zip"
  sha256 "224b5621215709c8a4dc732c5608ac2efa2b68676baebf78e0bdb64f66937d4a"
  version "1.0.04152019131524"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
