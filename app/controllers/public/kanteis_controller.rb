class Public::KanteisController < ApplicationController
  before_action :authenticate_member!

  # 会員側の鑑定コントローラー
  def index
    @member = current_member
    @kanteis = @member.kanteis.reverse_order
  end

  def show
    @kantei = Kantei.find(params[:id])
  end

  def edit
    @member = current_member
    @kantei = Kantei.find(params[:id])
  end

  def new
    @kantei = Kantei.new
  end

  def create
    @kantei = Kantei.new(kantei_params)
    @kantei.member_id = current_member.id
    if @kantei.save
      redirect_to kantei_path(@kantei)
    else
      render :new
    end
  end

  def update
    @kantei = Kantei.find(params[:id])
    if @kantei.update(kantei_params)
      redirect_to kantei_path
    else
      render :edit
    end
  end

  def destroy
    @kantei = Kantei.find(params[:id])
    @kantei.destroy
    redirect_to kanteis_path
  end

  private

  # ストロングパラメーター
  def kantei_params
    params.require(:kantei).permit(:member_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :course, :born_year, :born_month, :born_day, :year, :month, :day, :inquiry)
  end
end
