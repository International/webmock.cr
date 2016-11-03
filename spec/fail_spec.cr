require "./spec_helper"
require "cossack"

describe WebMock do
  it "requests wrong URL" do

    WebMock.wrap do
      http_client = Cossack::Client.new do |client|
        client.use Cossack::RedirectionMiddleware, limit: 10
      end
      resp = http_client.get("http://www.podnapisi.net/subtitles/en-arrow-2012-S01E01/KMA_/download")
    end
  end
end
