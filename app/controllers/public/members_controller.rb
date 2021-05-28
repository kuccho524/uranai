class Public::MembersController < ApplicationController
  before_action :authenticate_member!

  # 会員のコントローラー
  def show
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update(member_params)
      redirect_to members_path
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
