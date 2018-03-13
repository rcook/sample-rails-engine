require 'rails_helper'

describe SampleRailsEngine::ApplicationController do
  describe 'superclass' do
    it 'must be dummy ApplicationController' do
      expect(controller.class.superclass).to be(::ApplicationController)
    end
  end

  describe '#forgery_protection_strategy' do
    it 'should be exception' do
      expect(controller.forgery_protection_strategy).to be(
        ActionController::RequestForgeryProtection::ProtectionMethods::Exception
      )
    end
  end
end
