class KittensController < ApplicationController 
  def index
    @kittens = Kitten.all

    respond_to do |format|
      format.html
      format.json { render json: @kittens }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kittens_params)

    if @kitten.save
      flash[:notice] = 'You created a small fluffy Kitten!'
      redirect_to @kitten
    else
      render :new
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])

    if @kitten.update(kittens_params)
      flash[:notice] = 'You have updated your little Kitten!'
      redirect_to @kitten
    else
      render :edit
    end
  end
  
  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash[:notice] = 'You have destroyed an innocent Kitten!'

    redirect_to root_path
  end

  private 

  def kittens_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
