class Admin::KanteisController < ApplicationController
  before_action :authenticate_admin!

  # 管理者側の鑑定コントローラー
  def show
    @kantei = Kantei.find(params[:id])
  end

  def edit
    @kantei = Kantei.find(params[:id])
  end

  def update
    @kantei = Kantei.find(params[:id])
    if @kantei.update(kantei_params)
      redirect_to admin_kantei_path(@kantei)
    else
      render :edit
    end
  end

  def destroy
    @kantei = Kantei.find(params[:id])
    @kantei.destroy
    redirect_to root_path
  end

  private

  # ストロングパラメーター
  def kantei_params
    params.require(:kantei).permit(:member_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :course, :year, :month, :day, :inquiry, :kantei_status)
  end
end
