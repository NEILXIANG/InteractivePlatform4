class ShoppingTasksController < ApplicationController
  before_action :set_shopping_task, only: [:show, :edit, :update, :destroy]

  # GET /shopping_tasks
  # GET /shopping_tasks.json
  def index
    @shopping_tasks = ShoppingTask.all
  end

  # GET /shopping_tasks/1
  # GET /shopping_tasks/1.json
  def show
  end

  # GET /shopping_tasks/new
  def new
    @shopping_task = ShoppingTask.new
  end

  # GET /shopping_tasks/1/edit
  def edit
  end

  # POST /shopping_tasks
  # POST /shopping_tasks.json
  def create
    @shopping_task = ShoppingTask.new(shopping_task_params)

    respond_to do |format|
      if @shopping_task.save
        format.html { redirect_to @shopping_task, notice: 'Shopping task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shopping_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @shopping_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_tasks/1
  # PATCH/PUT /shopping_tasks/1.json
  def update
    respond_to do |format|
      if @shopping_task.update(shopping_task_params)
        format.html { redirect_to @shopping_task, notice: 'Shopping task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shopping_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_tasks/1
  # DELETE /shopping_tasks/1.json
  def destroy
    @shopping_task.destroy
    respond_to do |format|
      format.html { redirect_to shopping_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_task
      @shopping_task = ShoppingTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_task_params
      params.require(:shopping_task).permit(:price, :url, :type, :score, :remind)
    end
end
