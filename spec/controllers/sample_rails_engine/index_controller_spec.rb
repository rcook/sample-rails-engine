require 'rails_helper'

describe SampleRailsEngine::IndexController do
  routes { SampleRailsEngine::Engine.routes }

  %i[
    index
    page1
    page2
  ].each do |action|
    describe "##{action}" do
      it 'should return OK' do
        get action
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
