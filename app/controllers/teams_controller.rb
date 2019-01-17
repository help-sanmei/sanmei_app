class TeamsController < ApplicationController
  
  def new
    @team = Team.new
    # @team.staffs.build
    3.times { @team.staffs.build }
  end
  
  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "チーム、スタッフ登録完了"
      redirect_to @team
    else
      flash[:alert] = "未入力です"
      render new_team_path
    end
    
  end
  
  def index
    @teams = Team.all
  end
  
  def show
    @team = Team.find(params[:id])
    @staffs = Staff.where(team_id: params[:id])
  end
  
  def update
    update_flag = false
    params[:staff][:status].delete("0")
    logger.debug("======================== params[:staff][:status] = #{params[:staff][:status]}" )
    @team = Team.find(params[:id])
    @staffs = Staff.where(team_id: params[:id])
    
    # team内staffに選ばれたら時のstatus => 1に 選ばれなかったらstatus => 0に
    @staffs.each do |staff|
      s = Staff.find(staff.id)
      if params[:staff][:status].include?(staff.id.to_s)  #params配列内に該当staff.idがあればstatus->1 なければ->0に
        s.status = 1
        update_flag = true
      else
        s.status = 0
        update_flag = true  #どちらにしても update_flag => trueに
      end
      s.save
      
    end
    
    if update_flag
      flash[:notice] = "status変更"
      redirect_to("/teams/#{@team.id}")
    else
      flash[:alert] = "status変更失敗"
      render("teams/#{@team.id}")
    end
    
  end
  
  private
    def team_params
          params.require(:team).permit(
          :team_name, :team_description, :max_number,
            staffs_attributes: [:id, :family_name, :first_name, :gender, :birthday, :status, :_destroy]
          )
    end
  
  
end
