namespace :dot_example do
  desc "Setup the githooks to automate the dot_example tasks"
  task :setup => :environment do
    # Call other classes and do stuff
  end

  desc "Creates a new .env.example file with the keys from .env."
  task :sync => :environment do
    # Read in .env.example
    # Has to have some way of figuring out the project root since that's where we'll be looking for this
    # We can see how seedbank does this
    File.open(".env.example")
    # For each line
    # Save the key in that line
    # dot_env = DotEnv.new
    # dot_env.keys
    # DotEnvDotExample.write(dot_env.keys)
  end

  desc "Checks ENV keys to make sure they are up to date with those found in .env.example"
  task :check_vars => :environment do
    # Call other classes and do stuff
  end

end
