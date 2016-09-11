class DotEnvDotExample
  def initialize( options = {} )
    @filename = options[:filename] || ".env.example"
    @dot_env = options[:dot_env] || DotEnv.new
  end

  attr_reader :filename, :dot_env

  def write!
    File.open(filename, "w") do |file|
      file.puts dot_env.key_lines
    end
  end
end
