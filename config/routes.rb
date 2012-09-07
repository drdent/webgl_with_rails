# -*- encoding : utf-8 -*-
WebglWithRails::Application.routes.draw do
  mount Jax::Engine => "/jax" unless Rails.env == "production"

  match "/" => "home#index"
end
