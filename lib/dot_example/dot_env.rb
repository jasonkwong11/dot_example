class DotEnv
  def initialize(filename = ".env")
    @filename = filename
  end

  attr_reader :filename

  def key_lines
    keys.map { |key| key + "=" }.join("\n")
  end
  
  private

  def keys
    lines.map do |line|
    # TODO: Is this better as its own method or just included in the #keys method
      unless line.match(/^[^=\s]*=[^=\s]*$/)
        # TODO: Don't know if this is the best error message
        raise "Invalid Environment variable defintion"
      end
      line.match(/(.*)=.*\n/)[1] # http://rubular.com/r/SPeb5JXNje
    end
  end

  def lines
    File.readlines(filename)
  end
end
