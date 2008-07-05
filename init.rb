# define paths
RSOUND_ROOT = File.expand_path(File.dirname(__FILE__))
RSOUND_BIN = RSOUND_ROOT + "/bin"

# require all the files in the bin directory
Dir.foreach(RSOUND_BIN) {|f| require RSOUND_BIN + "/" + f unless [".",".."].include?(f)}
