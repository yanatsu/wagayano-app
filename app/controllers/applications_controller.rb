class ApplicationsController < ApplicationController

  def show
    @application=Application.find(params[:id])
    # @application = Application.where(id: params[:id])
  end
  def index
    # 項目を全件取得
    @applications = Application.all
    @application=Application.new
# 最低在庫数を下回っているものだけ出力
# @applications = Application.where("stock < ?", :required)
# @application=Application.new
  end
def new
    @application = Application.new
  end
  def menu
# 項目を全件取得
    @applications = Application.all
    @application=Application.new
  end

def edit
  @application=Application.find(params[:id])
end
  def list
    # 場所ごとに項目を全件取得
@applications = Application.where(space: params[:space])
  end

  def create
    application = Application.new(application_params)
    application.save
    redirect_to action: "new"

    # redirect_to action: "list"
  end
  def update
    application = Application.find(params[:id])
    application.update(application_params)
    redirect_to application_path(application)
  end
  def destroy
    application = Application.find(params[:id])
    application.destroy
    redirect_to applications_path
  end

 private
  def application_params
    params.require(:application).permit(:item, :space, :stock, :required)
    # item:項目名、space:保管場所、stock:在庫数、required:最低在庫数
  end

end
