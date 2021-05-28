class Admin::MembersController < ApplicationController
  before_action :authenticate_admin!

  # 管理者側の会員コントローラー
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to admin_member_path(@member)
    else
      render :edit
    end
  end

  private

  # ストロングパラメータ
  def member_params
    params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :year, :month, :day)
  end
end
