require 'rack'
require_relative 'bacon'
require_relative 'pirate'
require_relative 'sagan'


  # def initialize(env)
  #   @env = env
  #   @app = self.run
  # end

  app = Proc.new do |env|
      # Finds the num of paragraphs requested, or sets it to 1
      num = env["REQUEST_PATH"].sub(/\/\w+[|\/]/, "")
      num = 1 if num.to_i.zero?

    if env["REQUEST_PATH"] == "/lipsums"
      ['200', {'Content-Type' => 'text/html'}, ['Instead of /lipsums, Try /bacon, /pirate, or /sagan']]
    elsif env["REQUEST_PATH"].start_with?("/bacon")
      ['200', {'Content-Type' => 'text/html'}, [Bacon.call(num.to_i)]]
    elsif env["REQUEST_PATH"].start_with?("/pirate")
      ['200', {'Content-Type' => 'text/html'}, [Pirate.call(num.to_i)]]
    elsif env["REQUEST_PATH"].start_with?("/sagan")
      ['200', {'Content-Type' => 'text/html'}, [Sagan.call(num.to_i)]]
    else
      ['401', {'Content-Type' => 'text/html'}, ['<h1>ERROR 404:</h1> <br> <center>We\'re sorry we couldn\'t find that!</center>']]
    end
  end

Rack::Handler::WEBrick.run app

# Write a small server using rack that responds to following endpoints:
# /lipsums - Returns a list of possible lipsums
# /:lipsum - Where :lipsum is the lipsum requested and it should return a paragraph of said lipsum.
# /:lipsum/:num - Should return num paragraphs of said lipsum
