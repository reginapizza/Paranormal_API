# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'routes for users' do
  it 'routes POST /sign-up to the users#signup action' do
    expect(post('/sign-up')).to route_to('users#signup')
  end

  it 'routes POST /sign-in to the users#signin action' do
    expect(post('/sign-in')).to route_to('users#signin')
  end

  it 'routes DELETE /sign-out/:id to the users#signout action' do
    expect(delete('/sign-out')).to route_to(
      controller: 'users',
      action: 'signout'
    )
  end

  it 'routes PATCH /change-password/:id to the users#changepw action' do
    expect(patch('/change-password')).to route_to(
      controller: 'users',
      action: 'changepw'
    )
  end
end
