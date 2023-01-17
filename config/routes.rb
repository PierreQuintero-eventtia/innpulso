# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  devise_for  :users,
              path: '',
              path_names: { sign_in: 'login',
                            sign_out: 'logout',
                            sign_up: '',
                            registration: 'register',
                            edit: 'edit',
                            cancel: 'cancel',
                            confirmation: 'verification' }
end
