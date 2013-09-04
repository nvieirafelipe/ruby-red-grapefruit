module RubyRedGrapefruit
  class API < Grape::API
    version 'v1', using: :accept_version_header
    format :json

    resource :grapefruit do

      desc "Return grapefruit colors"
      get :colors do
        ['red', 'white', 'pink_hues']
      end

      desc "Return grapefruit nutrients"
      get :nutrients do
        ['vitamin C', 'vitamin E', 'riboflavin', 'thiamine']
      end
    end
  end
end