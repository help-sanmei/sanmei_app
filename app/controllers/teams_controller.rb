class TeamsController < ApplicationController
  
  include ApplicationHelper
  

  def new
    @team = Team.new
    # @team.staffs.build
    3.times { @team.staffs.build }
  end
  
  def create
    

    @team = Team.new(team_params)
    if @team.save
      staffs = @team.staffs
      staffs.each do |s|
        @staff = Staff.find_by(team_id: Team.last.id, family_name: s.family_name,first_name: s.first_name, gender: s.gender,birthday: s.birthday)
        meishiki_data_create(s.birthday,s.gender,@staff.id)
      end
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
  
  def team_evaluate
    @team = Team.find(params[:team_id])
    @staffs = Staff.where(team_id: params[:team_id])
    if @staffs
      @pattern = []
      @staffs.each do |s|
        logger.debug("============= staff.id = #{s.id}")
        logger.debug("============= 配列 = #{[s.ym_sc,s.ym_se].sort}")
        logger.debug("============= 配列 = #{Global::LS_PATTERN.index([s.ym_sc,s.ym_se].sort)} ")
        @pattern.push(Global::LS_PATTERN.index([s.ym_sc,s.ym_se].sort)) 
      end
      logger.debug("============= @pattern = #{@pattern}")
      i = 0
      @match = []
      (@pattern.size-1).times do |p|
        
        @match.push(Global::LEADER_SUB[@pattern[0]][@pattern[i+1]])  
        logger.debug("============= @pattern = #{@pattern[i+1]}")
        i += 1
      end
        logger.debug("============= @match = #{@match}")
      # match度最終アルゴリズム
        @match_deg = []
        @match.each do |m|
          if m <= 15
            @match_deg.push("×")
          elsif m <= 40
            @match_deg.push("△")
          else
            @match_deg.push("◎")
          end
        end
        logger.debug("============= @match_deg = #{@match_deg}")

    else
      flash[:notice] = "チーム情報がありません"
      redirect_back(fallback_location: root_path)
    end
  end
  
  def update
    redirect_to()
    
    # update_flag = false
    # params[:staff][:status].delete("0")
    # logger.debug("======================== params[:staff][:status] = #{params[:staff][:status]}" )
    # @team = Team.find(params[:id])
    # @staffs = Staff.where(team_id: params[:id])
    
    # # team内staffに選ばれたら時のstatus => 1に 選ばれなかったらstatus => 0に
    # @staffs.each do |staff|
    #   s = Staff.find(staff.id)
    #   if params[:staff][:status].include?(staff.id.to_s)  #params配列内に該当staff.idがあればstatus->1 なければ->0に
    #     s.status = 1
    #     update_flag = true
    #   else
    #     s.status = 0
    #     update_flag = true  #どちらにしても update_flag => trueに
    #   end
    #   s.save
      

    
    # if update_flag
    #   flash[:notice] = "status変更"
    #   redirect_to("/teams/#{@team.id}")
    # else
    #   flash[:alert] = "status変更失敗"
    #   render("teams/#{@team.id}")
    # end
    
  end
  
  private
    def team_params
          params.require(:team).permit(
          :team_name, :team_description, :max_number,
            staffs_attributes: [:id, :family_name, :first_name, :gender, :birthday, :status, :_destroy]
          )
    end
  
  
end
