class ListsController < ApplicationController
  def create
    @todo = Todo.find(params[:todo_id])
    @list = List.new(todo: @todo, user: current_user)
    if @list.save
      redirect_to todos_path, notice: 'Tarea Completada'
    else
      redirect_to todos_path, alert: 'Tarea NO Completada'
    end
  end

  def update
    list = List.find(params[:id])
    if list.completed?
      list.completed = false
    end
    if list.save
      redirect_to todos_path, notice: 'Tarea Modificada'
    else
      redirect_to todos_path, alert: 'Tarea NO Modificada'
    end
  end

  def index
     @list = current_user.list.where(completed: true)
  end

end
