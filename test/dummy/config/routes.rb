Rails.application.routes.draw do
  mount SampleRailsEngine::Engine => '/sample-rails-engine'
end
