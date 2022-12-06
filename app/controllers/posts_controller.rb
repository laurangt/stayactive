class PostsController < ApplicationController
  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true) #enable all other than link
    @user = current_user
    @post = Post.find(params[:id])
    @group = Group.find(params[:group_id])
    @comment = Comment.new
    authorize @post
    authorize @comment
  end

  def new
    @group = Group.find(params[:group_id])
    @post = Post.new
    authorize @post
  end

  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
    @post.membership = Membership.find_by(user: current_user, group: @group)
    authorize @post
    if @post.save
      redirect_to group_path(@group)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def update
  #   @post = Post.find(params[:id])
  #   @post.like_count += 1
  #   @post.save
  # end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    @group = Group.find(params[:group_id])
    redirect_to group_path(@group)
    authorize @post
  end

  def share
    share_params = post_params
    group = Group.find(share_params[:group])
    project = Project.find(params[:project_id])
    share_params[:group] = group
    share_params[:content] += "\n\n [#{project.title}](#{project_path(project)})"
    post = Post.new(share_params)
    post.membership = Membership.find_by(user: current_user, group: group)
    authorize post
    if post.save
      redirect_to group_path(group)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:group, :title, :content, :membership_id, :photo, :like_count)
  end
end
