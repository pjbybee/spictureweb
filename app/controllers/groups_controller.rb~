class GroupsController < ApplicationController

  def new
    @group = Group.new(:user_id => current_user.id)
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:notice] = "Successfully created Group."
      redirect_to current_user
    else
      render :action => 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      flash[:notice] = "Successfully updated group."
      redirect_to current_user
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    flash[:notice] = "Successfully destroyed group."
    redirect_to current_user
  end

  def show
    @group = Group.find(params[:id])
  end

  def add_contact
    @c2g = C2g.new(:group_id => params[:group_id])
  end

  def insert_contact
    @c2g = C2g.new(params[:c2g])
    if @c2g.save
      flash[:notice] = "Successfully Added Contact."
      redirect_to @c2g.group
    else
      flash[:error] = "Could not add Contact to group!"
      redirect_to @c2g.group
    end
  end

  def remove_contact
    @group = current_user.groups.find(params[:contact_removal][:group_id])
    @c2g = @group.c2gs.find_by_contact_id(params[:contact_removal][:contact_id])

    if @c2g.destroy
      flash[:notice] = "Successfully removed Contact."
      redirect_to @group
    else
      flash[:error] = "Could not remove Contact from group!"
      redirect_to @group
    end
  end

end
