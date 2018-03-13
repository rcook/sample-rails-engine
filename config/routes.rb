SampleRailsEngine::Engine.routes.draw do
  root 'index#index'
  get 'page1' => 'index#page1'
  get 'page2' => 'index#page2'
end
