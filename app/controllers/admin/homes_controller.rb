class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @kanteis = Kantei.all.reverse_order
  end
end
