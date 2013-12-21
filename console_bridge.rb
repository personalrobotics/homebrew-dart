require 'formula'

class ConsoleBridge < Formula
  homepage 'http://wiki.ros.org/console_bridge'
  url 'https://github.com/ros/console_bridge/archive/0.2.5.zip'
  sha1 '9c86af5eed01e970c6a06fc98c01a79dc3409e95'
  head 'https://github.com/ros/console_bridge.git'

  depends_on 'cmake' => :build
  depends_on 'boost'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end

  def test
    system "false"
  end
end
