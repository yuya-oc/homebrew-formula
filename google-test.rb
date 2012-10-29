require 'formula'

class GoogleTest < Formula
    homepage 'http://code.google.com/p/googletest/'
    url 'http://googletest.googlecode.com/files/gtest-1.6.0.zip'
    sha1 '00d6be170eb9fc3b2198ffdcb1f1d6ba7fc6e621'
    head 'http://googletest.googlecode.com/svn/trunk/'
    
    depends_on 'cmake' => :build
    
    def options
        [
        # Add options here
        # ["--option", "Description."],
        ]
    end

    def install
        system "cmake", "--prefix=#{prefix}"
        system "make"
        system "make install"
    end
end
