###
#  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
#  See full license at the bottom of this file.
##

Rails.application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  get '/login', to: 'pages#login'

  # This is where we send people to authenticate with OmniAuth.
  get '/auth/azureactivedirectory', as: :sign_in

  # This is where we are redirected if OmniAuth successfully authenticates
  # the user.
  match '/oauth/callback', to: 'pages#callback', via: [:get, :post]

  match '/auth/:provider/callback', to: 'pages#callback', via: [:get, :post]

  match '/send_mail', to: 'pages#send_mail', via: [:post]

  match '/disconnect', to: 'pages#disconnect', via: [:get]
end

#############################################################
##
## O365-Ruby-Microsoft-Graph-Connect, https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect
##
## Copyright (c) Microsoft Corporation
## All rights reserved.
##
## MIT License:
## Permission is hereby granted, free of charge, to any person obtaining
## a copy of this software and associated documentation files (the
## "Software"), to deal in the Software without restriction, including
## without limitation the rights to use, copy, modify, merge, publish,
## distribute, sublicense, and/or sell copies of the Software, and to
## permit persons to whom the Software is furnished to do so, subject to
## the following conditions:
##
## The above copyright notice and this permission notice shall be
## included in all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
## EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
## NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
## LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
## OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
## WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
#############################################################
