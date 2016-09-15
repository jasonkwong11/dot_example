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
    puts "#{dot_env.key_lines} \nwritten to #{filename}"
  end

  def missing
    keys.reject { |var| ENV[var].present? }
  end

  private

  def keys
    lines.map { |line| line.match(/(.*)\=.*/)[1] }
  end

  def lines
    File.readlines(filename)
  end
end
