# -*- encoding : utf-8 -*-
WebglWithRails::Application.routes.draw do

  mount Jax::Engine => "/" unless Rails.env == "production"

end
