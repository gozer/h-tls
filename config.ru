use Rack::Static,
  :urls => ["/runs", "/js", "/css", "/profiles", "/test_profiles", "/sources"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.htm', File::RDONLY)
  ]
}
