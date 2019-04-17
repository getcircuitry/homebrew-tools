
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/project-creator/1.0.20190417142844/project-creator-1.0.20190417142844.zip"
  sha256 "e4d6038ce39aa3593a45180188ebe1e52b7f153a20ca0fbb7a6754bfa58665f9"
  version "1.0.20190417142844"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
