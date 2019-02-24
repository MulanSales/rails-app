class PortfoliosController < ApplicationController

  # GET /portfolios
  def index
    @portfolio_items = Portfolio.all 
  end

  # GET /portfolios/new
  def new
    @portfolio_item = Portfolio.new
  end

  # POST /portfolio
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitile, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitile, :body))
        format.html { redirect_to portfolios_path, notice: 'Your portfolio has been updated'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

end
