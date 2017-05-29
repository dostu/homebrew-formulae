class Swiftmetric < Formula
  desc "Tool to measure code metrics"
  homepage ""
  url "https://github.com/dostu/SwiftMetric/archive/0.1.0.tar.gz"
  sha256 "b16808c0589b81e105b4cbe3f22e4991b7118426ecb1d1617a3e284402e1389f"

  depends_on :xcode => ["8.0", :build]

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/swiftmetric"
  end

  test do
    system "#{bin}/swiftmetric", "help"
  end
end
