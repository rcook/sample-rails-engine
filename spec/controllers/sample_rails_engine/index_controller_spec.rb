require 'rails_helper'

describe SampleRailsEngine::IndexController do
  routes { SampleRailsEngine::Engine.routes }

  describe '#forgery_protection_strategy' do
    it 'should be exception' do
      expect(controller.forgery_protection_strategy).to be(
        ActionController::RequestForgeryProtection::ProtectionMethods::Exception
      )
    end
  end

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
