class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
end

def edit
  @group = Group.find(params[:id])
end

def new
   @group = Group.new
 end

 def create
   @group = Group.new(group_params)

    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

   if @group.save
     redirect_to groups_path
   else
     render :new
   end
 end
@group.save

redirect_to groups_path
end

def update
  @group = Group.find(params[:id])
  @group.update(group_params)0..000
  redirect_to groups_path, notice:"Update Success"
end

def destroy
  @group = Group.find(params[:id])
  @group.destroy
  flash[:alert] = "Group deleted"
  redirect_to groups_path
end


private

def group_params
  params.require(:group).permit(:title,:description)
end
end
