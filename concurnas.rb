class Concurnas < Formula
  desc "Concurnas is an open source JVM programming language designed for building reliable, scalable, high performance concurrent, distributed and parallel systems"
  homepage "https://concurnas.com"
  url "https://github.com/Concurnas/Concurnas/releases/download/1.14.020/Concurnas-1.14.020.zip"
  sha256 "721b12c6fa7d87cbf2763d2b7c3ffc0c5395d2cb1f3760e9ae33d6f8c650a064"
  version "1.14.020"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/conc"]
    bin.write_exec_script Dir["#{libexec}/bin/concc"]
  end

end
