require "sprockets"
require "sprockets-helpers"
require "stylus/sprockets"

map "/assets" do
  environment = Sprockets::Environment.new
  environment.append_path "spec/dummy/assets/stylesheets"
  environment.append_path "lib/assets/stylesheets"
  environment.append_path "vendor/assets/stylesheets"

  Sprockets::Helpers.configure do |config|
    config.environment = environment
    config.prefix = "/assets"
  end

  Stylus.setup(environment)

  run environment
end

run lambda { |env|
  [
    200,
    {
      "Content-Type"  => "text/html",
      "Cache-Control" => "public, max-age=86400"
    },
    File.open("spec/dummy/views/index.html", File::RDONLY)
  ]
}
