require "test/unit"
BIN_PATH = File.expand_path(File.dirname(__FILE__)) + "/../bin"
Dir.foreach(BIN_PATH) {|f| require BIN_PATH + "/" + f unless [".",".."].include?(f)}
