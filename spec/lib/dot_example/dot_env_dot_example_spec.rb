require 'spec_helper'

describe DotEnvDotExample do
  describe '.new' do
    context 'it is initialized without a filename or a dot_env' do
      it 'uses the defaults of ".env.example" and instantiating a DotEnv with its defaults' do
        dot_env_dot_example = DotEnvDotExample.new
        expect(dot_env_dot_example.filename).to eq ".env.example"
        expect(dot_env_dot_example.dot_env.filename).to eq ".env"
      end
    end

    context 'it is initialized with a filename and DotEnv' do
      it 'uses the given filename' do
        dot_env = DotEnv.new("spec/support/.env")
        dot_env_dot_example = DotEnvDotExample.new(filename: ".env.template", dot_env: dot_env)
        expect(dot_env_dot_example.filename).to eq ".env.template"
        expect(dot_env_dot_example.dot_env.filename).to eq "spec/support/.env"
      end
    end
  end

  describe 'write!' do
    it 'writes the key_lines from the .env file to filename' do
      dot_env = DotEnv.new("spec/support/.env")
      dot_env_dot_example = DotEnvDotExample.new(
        filename: "spec/support/.env.example",
        dot_env: dot_env
      )
      dot_env_dot_example.write!

      expect(
        File.read(dot_env_dot_example.filename)
      ).to eq "SOME_API_KEY=\nSOME_API_SECRET=\n"
    end
  end
end
