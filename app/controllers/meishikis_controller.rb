class MeishikisController < ApplicationController
  
  # before_action :authenticate_user!
  
  
  def test #13個のテーブルテスト
         
          
          # logger.debug("--------@zokan = #{calc_zokan(4, 9)}")
          # logger.debug("--------@jushu = #{calc_10shu(4, 9)}")
          # logger.debug("--------@junijyu = #{calc_12jyu(4, 9)}")
          # logger.debug("--------@gousan = #{calc_gousan(4, 1)}")
          # logger.debug("--------@gogyocng = #{calc_gogyo_cng(4, 11)}")
          # logger.debug("--------@gogyohankai = #{calc_gogyo_hankai(2, 10)}")
          # logger.debug("--------@goyoshigo = #{calc_gogyo_shigo(4, 11)}")
          # logger.debug("--------@kokusen = #{calc_kokusen(4, 9)}")
          # logger.debug("--------@soukoku = #{calc_soukoku(4, 10)}")
          # logger.debug("--------@juni = #{calc_juni(2, 2)}")
          # logger.debug("--------@urazokan = #{calc_ura_zokan(2, 2)}")
          # logger.debug("--------@surigogyo = #{calc_suri_gogyo(2, 2)}")
          # logger.debug("--------@setsuiri_str = #{calc_setsu(1988,3)}")
          
          
          
  end  #test

  
        

  
  def create
    @test = "動いたよ"
  logger.debug("======================= y_inp = #{params[:y_inp]}")
  logger.debug("======================= y_inp = #{params[:m_inp]}")
  logger.debug("======================= y_inp = #{params[:d_inp]}")
  logger.debug("======================= y_inp = #{params[:radio]}")


  #各種テーブル
  # d_10kan １０干表示
  # d_10uraten １０干裏天干
  # d_10urachi １０干裏地支
  # d_10urazou １０干裏蔵干
  # d_10uratengg １０干裏天干五行
  # d_10urachigg １０干裏地支五行
  # d_10urazougg １０干裏蔵干五行
  # d_12shi   １２支表示
  # d_10shu  １０大主星表示
  # d_12jyu   １２大従星表示
  # d_12shigg  １２支五行
  # d_10shigg  １０干五行
  # d_12jyuenergy  １２大従星エネルギー

  # 各種グローバル変数
  # b_y_inp   入力年
  # b_nengo   年号文字列
  # b_y_bias  年号バイアス
  # b_y0      西暦年
  # b_m0      月
  # b_d0      日
  # today=new Date()     現在日時
  # c_sflg, c_sdte      節入り
  # im_py, im_pm, im_pd  干支番号
  # im_ky, im_km, im_kd  天干  （年干 月干 日干）
  # im_sy, im_sm, im_sd  地支  （年支 月支 日支）
  # im_zy, im_zm, im_zd  蔵干
  # im_tx                天中殺
  # ym_sc, ym_se, ym_sw, ym_sn, ym_ss  主星
  # ym_jy, ym_jm, ym_jd                従星
  # moku,ka,dou,gon,sui   木火土金水
  # nct  年運表 スタートカウンター


  # 調候守護神 Array
  
  shugoshin_ar=[["","丁丙庚","丁丙庚","丙癸","庚丙丁戊己","庚丁壬","癸丁庚","癸丁庚","癸庚丁","丁庚壬","丁庚丙","丁甲庚壬癸","庚丁丙戊"],
                ["","丙","丙","丙癸","丙癸","癸丙戊","癸","癸丙","癸丙","丙癸己","癸丙丁","癸辛","丙戊"],
                ["","壬戊己","壬甲","壬庚","壬庚","壬甲","壬庚癸","壬庚","壬庚","壬戊","壬癸","甲壬","甲戊庚壬"],
                ["","甲庚","甲庚","甲庚","庚甲","甲庚","甲庚壬","壬庚癸","甲庚壬","甲庚丙戊","甲丙戊庚","甲戊庚","甲庚"],
                ["","丙甲","丙甲","丙甲癸","丙甲癸","甲丙癸","癸甲丙","壬甲丙","癸甲丙","丙甲癸","丙癸","甲丙癸","甲丙"],
                ["","丙甲戊","丙甲戊","丙甲庚","甲癸丙","丙甲癸","癸丙辛","壬丙辛","癸丙","丙癸","丙癸","甲丙癸","丙甲戊"],
                ["","丁甲丙","丙丁甲","丙甲壬丁戊","丁甲丙庚","甲丁壬癸","壬丙戊丁","壬癸","丁甲","丁甲","丁甲丙","甲壬","丙丁甲"],
                ["","丙壬甲戊","丙壬戊己","己壬庚","壬甲","壬甲","壬癸庚","壬己癸","壬甲庚","壬甲戊","壬甲","壬甲","壬甲丙"],
                ["","戊丙","丙甲丁","戊庚丙","戊庚辛","甲庚","壬庚癸辛","癸庚辛","庚甲癸辛","戊丁","甲庚","甲丙","戊丙庚"],
                ["","丙辛","丙丁","辛丙","庚辛","辛丙甲","辛","庚辛壬癸","庚辛壬癸","丁","辛丙","辛甲壬癸","庚辛丁戊"]]

  #テーブル作成
            # 0    1    2    3    4    5    6    7    8    9    10
  d_10kan=["癸","甲","乙","丙","丁","戊","己","庚","辛","壬","癸"]

	d_10kan1=["","甲","乙","丙","丁","戊","己","庚","辛","壬","癸"]
	d_10kangg=["　","木","木","火","火","土","土","金","金","水","水"]
  d_12shi=[" ","子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥"]
	d_12shigg=["　","水","土","木","木","土","火","火","土","金","金","土","水"]
	d_12shiggno=[0,5,3,1,1,3,2,2,3,4,4,3,5]
  d_10shu=["　　","貫索","石門","鳳閣","調舒","祿存","司祿","車騎","牽牛","龍高","玉堂"]
	d_10urashu=["　　","貫索","石門","龍高","玉堂","車騎","牽牛","祿存","司祿","鳳閣","調舒"]
  d_12jyuen=["　　","天馳 1","天極 2","天報 3","天胡 4","天庫 5","天印 6","天恍 7","天堂 8","天貴 9","天南 10","天祿 11","天将 12"]
	d_12jyu=["　　","馳","極","報","胡","庫","印","恍","堂","貴","南","祿","将"]
  d_12jyuenergy=[" ","1","2","3","4","5","6","7","8","9","10","11","12"]
	d_gousan=[" ","半会","支合","方三位","冲","刑","破","害","支合・破","刑・冲","刑・害","刑・破","支合・刑・破"]
	d_gogyo=["","木","火","土","金","水"]
	d_nikan=["","裏に引っ込む","自分から動かない","自立","人生のどこかで爆発的幸運","しぶとい・晩成型","耐久力","情の中の理","スケールが大か小か","気楽な人生","大器・度胸あり",
	                         "人を育てるのがうまい","感性がよい","頭の回転がいい","先祖の因縁を受ける","カッコつける","さわやか","進み上手","感性が強い","情があるが自分中心","堅実・まじめ",
							 "自己犠牲","冷静","血濁","念が強い","たくましい","他力運・動かない","変化上手","お人好し","頭の回転がいい","風流人・趣味人",
							 "人を犠牲にする","マイペース","隠れてコソコソする","人を���き込む","血濁","度胸がいい","裏方が吉","自道・マイペース","感性が強い","一代で大成",
							 "表に出たがる","情が厚い","波乱万丈","見かけと中身が違う","究極の救い","自力運・開拓者","逃げ上手","独特の感性","知的攻撃・画策する","忍耐強い",
							 "人を育てない","自分から動く","晩成型・着実","１つの世界で頑張る","変化上手","他力運・もらい上手","はっきりしない","おとなしい自我","家柄の古さ","変化を好まない"];

  d_z_shugo=[[[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]],
              [[0,0],["火、金","水、木"],["水","火、土"],["木、水","土、火"],["水","金、土"],["土、木","金、水"]],
              [[0,0],["金","水、木"],["土、金","木、火"],["木、金","土、火"],["木、火","金、水"],["木","金、水"]],
              [[0,0],["火、土","木、水"],["金、水","火、土"],["木、金","土、火"],["火","金"],["土、火","水、金"]],
              [[0,0],["金","木、水"],["金、水","火、木"],["木、金","土、火"],["水、火","金、土"],["土、木、火","水、金"]],
              [[0,0],["金","木"],["金","火、土"],["木、金","火、土"],["火、水","金"],["土、木","水、金"]]];

  #裏蔵干
	d_10uraten=[" ","癸","癸","戊","乙","乙","戊","己","丁","戊","辛","辛","甲"]
	d_10uratengg=["　","水","水","土","木","木","土","土","火","土","金","金","木"]
	d_10urachi=["　","癸","辛","丙","乙","癸","庚","己","乙","壬","辛","丁","甲"]
	d_10urachigg=["　","水","金","火","木","水","金","土","木","水","金","金","木"]
	d_10urazou=["　","癸","己","甲","乙","戊","丙","丁","己","庚","辛","戊","壬"]
	d_10urazougg=["　","水","土","木","木","土","火","火","土","金","金","土","水"]
  

  # 計算ボタンイベント

  
        #本日日付
        this_year = Date.today.year
        this_month = Date.today.month+1
        this_day = Date.today.day
  
  
          #計算
        b_y_inp=params[:y_inp].to_i
        b_y0=b_y_inp
        b_m0=params[:m_inp].to_i
        b_d0=params[:d_inp].to_i
        x=calc_setsu(b_y0,b_m0)
        b_sei=params[:sei]
        b_mei=params[:mei]
        
       
  
      #年齢計算
      your_age=0
      if b_m0==this_month && b_d0<=this_day
          your_age=this_year-b_y0
      elsif b_m0==this_month && b_d0>this_day
          your_age=this_year-b_y0-1
      elsif b_m0 >this_month
          your_age=this_year-b_y0-1
      elsif b_m0 <this_month
          your_age=this_year-b_y0
      else
          your_age="error"
      end
  
      logger.debug("your_age =#{your_age}" )
      
          #異常干支
  
        #まずは 1912/2/1からの歴日数計算
      dt1 = Date.new(b_y0, b_m0, b_d0)
      dt2 = Date.new(1912, 2, 1)
      diff = dt1 - dt2
      reki_d = diff / 86400000    #1日は86400000ミリ秒
  
  
  
        #日干支番号 算出
      nikkan_n=reki_d%60
  
  
      if nikkan_n<17
            nikkan_n=nikkan_n+44
      elsif nikkan_n>=17
          nikkan_n=nikkan_n-16
      else
          nikkan_n="error"
      end
  
  
  
  
        y1=b_y0
        m1=b_m0
        if x>b_d0
            c_sflg=1
          m1=m1-1
            if m1<1
            m1=m1+12
            y1=y1-1
            end
            c_sdte=calc_maxdte(y1, m1)-calc_setsu(y1, m1)+b_d0
        else
            c_sflg=0
            c_sdte=b_d0-x
        end
  
  
        im_py=b_y0
        if b_m0<2 || (b_m0==2 && c_sflg==1)
            im_py=im_py-1
        end
        im_py=cmod(im_py-3, 60) 
        
        im_ky=cmod(im_py, 10)
        im_sy=cmod(im_py, 12)
        im_zy=calc_zokan(im_sy, c_sdte)
        im_pm=b_y0*12+b_m0
        if c_sflg==1
          im_pm=im_pm-1
        end
        im_pm=cmod(im_pm-47, 60)
        im_km=cmod(im_pm, 10)
        im_sm=cmod(im_pm, 12)
        im_zm=calc_zokan(im_sm, c_sdte)
        x=cdate(b_y0, b_m0, b_d0)
        im_pd=cmod(x, 60)
        im_kd=cmod(im_pd, 10)
        im_sd=cmod(im_pd, 12)
        im_zd=calc_zokan(im_sd, c_sdte)
        im_tx=11-cint((im_pd-1)/10)*2
  
  
        ym_sc=calc_10shu(im_kd, im_zm)
        ym_se=calc_10shu(im_kd, im_zy)
        ym_sw=calc_10shu(im_kd, im_zd)
        ym_sn=calc_10shu(im_kd, im_ky)
        ym_ss=calc_10shu(im_kd, im_km)
        ym_jy=calc_12jyu(im_kd, im_sy)
        ym_jm=calc_12jyu(im_kd, im_sm)
        ym_jd=calc_12jyu(im_kd, im_sd)
  
        #異常干支 検査 日
        ar=[11,12,18,19,23,24,25,30,35,36,37,48,54]
        ijoflag = 0
        if ar.include?(im_pd)
          ijoflag = 1
        end
  
  
        #異常干支 検査 月
  
        ar2=[11,12,18,19,23,24,25,30,35,36,37,48,54]
      ijoflag2 = 0
      if ar2.include?(im_pm)
          ijoflag2 = 1
      end
  
  
        #異常干支 検査 年
  
        ar3=[11,12,18,19,23,24,25,30,35,36,37,48,54]
      ijoflag3 = 0
      if ar3.include?(im_py)
          ijoflag3 = 1
      end
  
  
      #次の節入日までの日数
      yoku_setsu = 0
      if  b_d0<=calc_setsu(b_y0,b_m0)
          yoku_setsu = calc_setsu(b_y0,b_m0)-b_d0
      elsif b_m0==12
        yoku_setsu = calc_setsu(b_y0+1,1)+calc_maxdte(b_y0,12)-b_d0
      else
        yoku_setsu = calc_setsu(b_y0,b_m0+1)+calc_maxdte(b_y0,b_m0)-b_d0
      end
  
  
      #前の節入日までの日数
      mae_setsu = 0
      if    b_d0>=calc_setsu(b_y0,b_m0)
          mae_setsu = b_d0-calc_setsu(b_y0,b_m0)
      elsif b_m0==1
        mae_setsu = b_d0+calc_maxdte(b_y0,12)-calc_setsu(b_y0-1,12)
      else
        mae_setsu = b_d0-calc_setsu(b_y0,b_m0-1)+calc_maxdte(b_y0,b_m0-1)
      end
  
  
      #順行運初旬
      j_shojun = 0
      if b_d0==calc_setsu(b_y0,b_m0)
        j_shojun = 10
      elsif (yoku_setsu/3).to_i>=10
        j_shojun = 10
        elsif (yoku_setsu/3).to_i<=1
        j_shojun = 1
      elsif yoku_setsu%3>=2
        j_shojun = 1+(yoku_setsu/3).to_i
      elsif yoku_setsu%3==1
        j_shojun = (yoku_setsu/3).to_i
      else
        j_shojun = (yoku_setsu/3).to_i
      end  
  
      #逆行運初旬
      g_shojun = 0
      if b_d0==calc_setsu(b_y0,b_m0)
      g_shojun = 1
      elsif (mae_setsu/3).to_i>=10
      g_shojun = 10
      elsif (mae_setsu/3).to_i<=1
      g_shojun = 1
      elsif mae_setsu%3==2
        g_shojun = 1+(mae_setsu/3).to_i
      elsif yoku_setsu%3==1
      g_shojun = (mae_setsu/3).to_i
      else
        g_shojun = (mae_setsu/3).to_i
      end
  
  
      #性別チェック
      your_sex  = params[:radio]
  
        #大運方向
        sei_flag = 0
        if your_sex == "f"
          sei_flag = -1
        elsif  your_sex == "m"
          sei_flag = 1
        else
          sei_flag = 1  #基本的にはありえないが万が一男性女性以外の場合デフォルト男性
        end  
  
        nen_inyou = 0
        if im_ky%2 == 0
          nen_inyou = -1
        elsif im_ky%2 == 1
          nen_inyou = 1
        else
          nen_inyou = 0
        end  
  
        taiunhoukou = 0
        taiunhoukou = nen_inyou*sei_flag
  
  
        #初旬決定
        shojun = 0
        if taiunhoukou == 1
          shojun = j_shojun
        elsif taiunhoukou ==-1
          shojun = g_shojun
        else
          shojun = "error"
        end
  
  
  
      logger.debug("im_kd = #{im_kd} ,im_km = #{im_km},im_ky=#{im_ky},im_sd = #{im_sd},im_sm = #{im_sm},im_sy = #{im_sy},im_zy = #{im_zy},im_zm = #{im_zm},im_zd = #{im_zd}")
      logger.debug("ym_sc = #{ym_sc} ,ym_se = #{ym_se},ym_sw=#{ym_sw},ym_sn = #{ym_sn},ym_ss = #{ym_ss},ym_jy = #{ym_jy},im_jm = #{ym_jm},ym_jd = #{ym_jd}")
      logger.debug("shugoshin_ar=#{calc_shugoshin(im_sm,im_kd)}")
       moku=0
       ka=0
       dou=0
       gon=0
       sui=0
  
      #日干の五行
      if im_kd == 1 || im_kd == 2
          moku = moku + 1
      elsif im_kd == 3 || im_kd == 4
        ka = ka+1
      elsif im_kd == 5 || im_kd == 6
        dou = dou + 1
      elsif im_kd == 7 || im_kd == 8
        gon = gon+1
      elsif im_kd == 9 || im_kd == 10
        sui = sui + 1
      end
  
      #月干の五行
      if im_km==1 || im_km==2
      moku=moku+1
      elsif im_km==3 || im_km==4
      ka=ka+1
      elsif im_km==5 || im_km==6
      dou=dou+1
      elsif im_km==7 || im_km==8
      gon=gon+1
      elsif im_km==9 || im_km==10
      sui=sui+1
      end
  
        #年干の五行
      if im_ky==1 || im_ky==2
      moku=moku+1
      elsif im_ky==3 || im_ky==4
      ka=ka+1
      elsif im_ky==5 || im_ky==6
      dou=dou+1
      elsif im_ky==7 || im_ky==8
      gon=gon+1
      elsif im_ky==9 || im_ky==10
      sui=sui+1
      end
  
        #日支の五行
      if im_sd==3 || im_sd==4
      moku=moku+1
      elsif im_sd==6 || im_sd==7
      ka=ka+1
      elsif im_sd==2 || im_sd==5 || im_sd==8 || im_sd==11
      dou=dou+1
      elsif im_sd==9 || im_sd==10
      gon=gon+1
      elsif im_sd==1 || im_sd==12
      sui=sui+1
      end
  
  
      #月支の五行
      if im_sm==3 || im_sm==4
      moku=moku+2
      elsif im_sm==6 || im_sm==7
      ka=ka+2
      elsif im_sm==2 || im_sm==5 || im_sm==8 || im_sm==11
      dou=dou+2
      elsif im_sm==9 || im_sm==10
      gon=gon+2
      elsif im_sm==1 || im_sm==12
      sui=sui+2
      else
      end
  
          #年支の五行
      if im_sy==3 || im_sy==4
      moku=moku+1
      elsif im_sy==6 || im_sy==7
      ka=ka+1
      elsif im_sy==2 || im_sy==5 || im_sy==8 || im_sy==11
      dou=dou+1
      elsif im_sy==9 || im_sy==10
      gon=gon+1
      elsif im_sy==1 || im_sy==12
      sui=sui+1
      end
      
      
		  # logger.debug("calc_gogyo_cng(im_sd, im_sm) = #{calc_gogyo_cng(im_sd, im_sm)}")
		  # logger.debug("calc_gogyo_cng(im_sd, im_sy) = #{calc_gogyo_cng(im_sd, im_sy)}")
      # logger.debug("calc_gogyo_cng(im_sm, im_sy) = #{calc_gogyo_cng(im_sm, im_sy)}")

  
  
  
  
      #三合会局 sangou_flag=1,2,3,4 なら 三合会局
        sangou = [im_sy,im_sm,im_sd]
      sangou_flag=0
      if sangou.sort.reverse=="1,5,9"
          sangou_flag=1   #水局
        elsif sangou.sort.reverse=="2,6,10"
          sangou_flag=2   #金局
        elsif sangou.sort.reverse=="3,7,11"
          sangou_flag=3 #火局
        elsif sangou.sort.reverse=="4,8,12"
          sangou_flag=4 #木局
      end
  
  
      if sangou_flag==1 || sangou_flag==2 || sangou_flag==3 || sangou_flag==4
       if sangou_flag==1
         if im_sm==1
           sui=sui+2,dou=dou-1,gon=gon-1   #化水で月支が子（水）なら
         elsif im_sm==5
           sui=sui+3,dou=dou-2,gon=gon-1
         elsif im_sm==9
           sui=sui+3,dou=dou-1,gon=gon-2
         end
       end
  
       if sangou_flag==2
         if im_sm==2
           gon=gon+3,dou=dou-2,ka=ka-1
         elsif im_sm==6
           gon=gon+3,dou=dou-1,ka=ka-2
         elsif im_sm==10
           gon=gon+2,dou=dou-1,ka=ka-1 #化金で月支が酉（金）なら
         end
       end
  
       if sangou_flag==3
         if im_sm==3
           ka=ka+3,moku=moku-2,dou=dou-1
         elsif im_sm==7
           ka=ka+2,moku=moku-1,dou=dou-1 #化火で月支が午（火）なら
         elsif im_sm==11
           ka=ka+3,moku=moku-1,dou=dou-2
         end
       end
  
       if sangou_flag==4
         if im_sm==4
           moku=moku+2,dou=dou-1,sui=sui-1 #化木で月支が卯（木）なら
         elsif im_sm==8
           moku=moku+3,dou=dou-2,sui=sui-1
         elsif im_sm==12
           moku=moku+3,dou=dou-1,sui=sui-2
         end
       end
      end 
       
  
  
  
    #方三位 sangou_flag=5,6,7,8 なら 方三位
    if sangou.sort.reverse=="1,2,12"
      sangou_flag=5 #水局
    elsif sangou.sort.reverse=="3,4,5"
      sangou_flag=6 #木局
    elsif sangou.sort.reverse=="6,7,8"
      sangou_flag=7 #火局
    elsif sangou.sort.reverse=="9,10,11"
      sangou_flag=8 #金局
    end
  
    if sangou_flag==5 || sangou_flag==6 || sangou_flag==7 || sangou_flag==8
      if sangou_flag==5
        if im_sm==1
          sui=sui+1,dou=dou-1
        elsif im_sm==2
          sui=sui+2,dou=dou-2 #化水で月支が丑（土）なら 2個増減
        elsif im_sm==12
          sui=sui+1,dou=dou-1
        end
      end
  
      if sangou_flag==6
        if im_sm==3
          moku=moku+1,dou=dou-1
        elsif im_sm==4
          moku=moku+1,dou=dou-1
          elsif im_sm==5
          moku=moku+2,dou=dou-2 #化木で月支が辰（土）なら  2個増減
        end
      end
  
      if sangou_flag==7
        if im_sm==6
          ka=ka+1,dou=dou-1
        elsif im_sm==7
          ka=ka+1,dou=dou-1
          elsif im_sm==8
          ka=ka+2,dou=dou-2 #化火で月支が未（土）なら  2個増減
        end
      end
  
      if sangou_flag==8
        if im_sm==9
          gon=gon+1,dou=dou-1
        elsif im_sm==10
          gon=gon+1,dou=dou-1
          elsif im_sm==11
          gon=gon+2,dou=dou-2 #化金で月支が戌（土）なら  2個増減
        end
      end
    end
  
    #位相法表による五行の調整
    #d_12shiggno=[0,5,3,1,1,3,2,2,3,4,4,3,1] 支五行
    isho_flag1=0
    isho_flag2=0
    isho_flag3=0
    gg_adj_isho=[0,0,0,0,0,0]   #五行位相法表での増減array 初期化
  
    if calc_gogyo_shigo(im_sd,im_sm)!=0
      isho_flag1=1 #日月 支合
    elsif calc_gogyo_hankai(im_sd,im_sm)!=0
      isho_flag1=2 #日月 半会
    elsif calc_gogyo_shigo(im_sd,im_sy)!=0
      isho_flag2=1  #日年 支合
    elsif calc_gogyo_hankai(im_sd,im_sy)!=0
      isho_flag2=2 #日年 半会
    elsif calc_gogyo_shigo(im_sm,im_sy)!=0
      isho_flag3=1   #月年 支合
    elsif calc_gogyo_hankai(im_sm,im_sy)!=0
      isho_flag3=2 #月年 半会
    end
  
    #------------------五行特殊パターンフラグ設定 special_flag ----------------------------
    special_flag = 0
    #1つの支が2つの五行になる
    if sangou.sort.reverse=="1,6,9"
      if im_sm==9 #子申巳 月支が申
        special_flag=1
      else
        special_flag=2
      end
    end
    if sangou.sort.reverse=="4,7,8"
      if im_sm==8 #卯未牛 月支が未
        special_flag=3
      else
        special_flag=4
      end
    end
  
    if sangou.sort.reverse=="3,7,12"
      if im_sm==3    #牛寅亥 月支が寅
        special_flag=5
      else
        special_flag=6
      end
    end
  
    if sangou.sort.reverse=="1,2,10"
      if im_sm==2    #酉丑子 月支が丑
        special_flag=7
      else
        special_flag=8
      end
    end
  
    #上記の変形
    if sangou.sort.reverse=="1,5,10"
      if im_sm==5
        special_flag=9 #酉辰子
      else
        special_flag=10
      end
    end
  
    if sangou.sort.reverse=="4,7,11"
      if im_sm==11
        special_flag=11 #卯戌牛
      else
        special_flag=12
      end
    end
  
    # １つの支が半会・支合する
    if sangou.sort.reverse=="6,9,10"
      if im_sm==6
        special_flag=13 #酉巳申
      else
        special_flag=14
      end
    end
  
    if sangou.sort.reverse=="3,4,12"
      if im_sm==12
        special_flag=15 #卯亥寅
      else
        special_flag=16
      end
    end
  
    #--------------------五行特殊パターン 設定 end
  
    #------------------ 五行特殊パターン 処理 special_flag != 0 ------------------------
  
  
    if sangou_flag==0 && special_flag!=0
  
      case special_flag
  
      when 1
      #月支が申 （金-2、水+1、金+1）
      gg_adj_isho[4]=gg_adj_isho[4]-2
      gg_adj_isho[4]=gg_adj_isho[4]+2
      gg_adj_isho[5]=gg_adj_isho[5]+2
  
  
      when 2
      #日年支が申 （金-1、水+1、金+1）
      gg_adj_isho[4] -= 1
      gg_adj_isho[4] += 1
      gg_adj_isho[5] += 1
  
  
      when 3
      #月支が未 （土-2、木+1、火+1）
      gg_adj_isho[3]=gg_adj_isho[3]-2
      gg_adj_isho[1]=gg_adj_isho[1]+2
      gg_adj_isho[2]=gg_adj_isho[2]+2
  
      when 4
      #月支が未 （土-1、木+1、火+1）
      gg_adj_isho[3] -= 1
      gg_adj_isho[1] += 1
      gg_adj_isho[2] += 1
  
      when 5
      #牛寅亥 月支が寅 （金-2、木+1、火+1）
      gg_adj_isho[4]=gg_adj_isho[4]-2
      gg_adj_isho[1]=gg_adj_isho[1]+2
      gg_adj_isho[2]=gg_adj_isho[2]+2
  
      when 6
      #日年支が寅 （金-1、木+1、火+1）
      gg_adj_isho[4] -= 1
      gg_adj_isho[1] += 1
      gg_adj_isho[2] += 1
  
      when 7
      #酉丑子 月支が丑 （土-2、水+1、金+1）
      gg_adj_isho[3]=gg_adj_isho[3]-2
      gg_adj_isho[1]=gg_adj_isho[1]+2
      gg_adj_isho[2]=gg_adj_isho[2]+2
  
      when 8
      #日年支が丑 （土-1、水+1、金+1）
      gg_adj_isho[3] -= 1
      gg_adj_isho[1] += 1
      gg_adj_isho[2] += 1
  
      when 9
      #酉辰子 月支が辰
      gg_adj_isho[3]=gg_adj_isho[3]-2
      if dou>=3       #土>=3 （土+1）
        gg_adj_isho[3]=gg_adj_isho[3]+2
      else #土<3 （金+1）
        gg_adj_isho[4]=gg_adj_isho[4]+2
      end
      gg_adj_isho[5]=gg_adj_isho[5]+2
  
      when 10
      #日年支が辰 （土-1、水+1、金+1）
      gg_adj_isho[3] -= 1
      if dou>=3
        gg_adj_isho[3] += 1
      else
        gg_adj_isho[4] += 1
      end
      gg_adj_isho[5] += 1
  
      when 11
      #卯戌牛 月支が戌
      gg_adj_isho[3]=gg_adj_isho[3]-2
      if dou>=3      #土>=3 （土+1）
        gg_adj_isho[3]=gg_adj_isho[3]+2
      else #土<3 （金+1）
        gg_adj_isho[1]=gg_adj_isho[1]+2
      end
      gg_adj_isho[2]=gg_adj_isho[2]+2
  
      when 12
      #日年支が戌 （土-1、木+1、火+1）
      gg_adj_isho[3] -= 1
      if dou>=3
        gg_adj_isho[3] += 1
      else
        gg_adj_isho[1] += 1
      end
      gg_adj_isho[2] += 1
  
      when 13
      #酉巳申 月支が巳
      gg_adj_isho[2]=gg_adj_isho[2]-2
      gg_adj_isho[4]=gg_adj_isho[4]+2
  
  
      when 14
      #酉巳申 日年支が巳
      gg_adj_isho[2] -= 1
      gg_adj_isho[4] += 1
  
  
      when 15
      卯亥 寅月支が亥
        gg_adj_isho[5] = gg_adj_isho[5]-2
      gg_adj_isho[1] = gg_adj_isho[1]+2
  
  
      when 16
      #日年支が亥
      gg_adj_isho[5] -= 1
      gg_adj_isho[1] += 1
  
      end
    end
  
  
    #----------------  五行特殊パターン 処理 end   ------------------
  
    if sangou_flag==0 && special_flag==0
      if isho_flag1+isho_flag2+isho_flag3==0
        gg_adj_isho=[0,0,0,0,0,0]
      end
  
      #支合１個 -----------------------------------
      if isho_flag1+isho_flag2+isho_flag3==1
        #日支・月支
        if isho_flag1==1
          if (calc_gogyo_shigo(im_sd,im_sm)==1) || (calc_gogyo_shigo(im_sd,im_sm)==2) || (calc_gogyo_shigo(im_sd,im_sm)==3) || (calc_gogyo_shigo(im_sd,im_sm)==4) || (calc_gogyo_shigo(im_sd,im_sm)==5)
            #日支!=化ける支→化ける、日支=化ける支→変化なし
            if d_12shiggno[im_sd]!=calc_gogyo_shigo(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)] += 1
            end
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減）、月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_shigo(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)]=gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)]+2
            end
          end
        elsif isho_flag2==1
          #日支・年支
          if (calc_gogyo_shigo(im_sd,im_sy)==1) || (calc_gogyo_shigo(im_sd,im_sy)==2) || (calc_gogyo_shigo(im_sd,im_sy)==3) || (calc_gogyo_shigo(im_sd,im_sy)==4) || (calc_gogyo_shigo(im_sd,im_sy)==5)
            if d_12shiggno[im_sd]!=calc_gogyo_shigo(im_sd,im_sy)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sy)] += 1
            end
            if d_12shiggno[im_sy]!=calc_gogyo_shigo(im_sd,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sy)] += 1
            end
          elsif (calc_gogyo_shigo(im_sd,im_sy)==6) || (calc_gogyo_shigo(im_sd,im_sy)==7)  #木+1 土-1
            gg_adj_isho[1] += 1
            gg_adj_isho[3] -= 1
          end
  
        elsif isho_flag3==1
          #月支・年支
          if (calc_gogyo_shigo(im_sm,im_sy)==1) || (calc_gogyo_shigo(im_sm,im_sy)==2) || (calc_gogyo_shigo(im_sm,im_sy)==3) || (calc_gogyo_shigo(im_sm,im_sy)==4) || (calc_gogyo_shigo(im_sm,im_sy)==5)
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_shigo(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)]=gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)]+2
            end
            if d_12shiggno[im_sy]!=calc_gogyo_shigo(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)] += 1
            end
          end
        end
  
      end
    end  
  
      #半会１個 ----------------------------------------
      if  (isho_flag1==2 || isho_flag2==2 || isho_flag3==2) && (isho_flag1+isho_flag2+isho_flag3==2)
        #日支・月支
        if isho_flag1==2
          if (calc_gogyo_hankai(im_sd,im_sm)==1) || (calc_gogyo_hankai(im_sd,im_sm)==2) || (calc_gogyo_hankai(im_sd,im_sm)==3) || (calc_gogyo_hankai(im_sd,im_sm)==4) || (calc_gogyo_hankai(im_sd,im_sm)==5)
            #日支!=化ける支 → 化ける 、 日支=化ける支 → 変化なし
            if d_12shiggno[im_sd]!=calc_gogyo_hankai(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)] += 1
            end
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月��=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_hankai(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)]=gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)]+2
            end
          end
        elsif isho_flag2==2
          #日支・年支 
          if (calc_gogyo_hankai(im_sd,im_sy)==1) || (calc_gogyo_hankai(im_sd,im_sy)==2) || (calc_gogyo_hankai(im_sd,im_sy)==3) || (calc_gogyo_hankai(im_sd,im_sy)==4) || (calc_gogyo_hankai(im_sd,im_sy)==5)
            if d_12shiggno[im_sd]!=calc_gogyo_hankai(im_sd,im_sy)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_hankai(im_sd,im_sy)] += 1
            end
            if d_12shiggno[im_sy]!=calc_gogyo_hankai(im_sd,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_hankai(im_sd,im_sy)] += 1
            end
          end
        elsif isho_flag3==2
          #月支・年支 
          if (calc_gogyo_hankai(im_sm,im_sy)==1) || (calc_gogyo_hankai(im_sm,im_sy)==2) || (calc_gogyo_hankai(im_sm,im_sy)==3) || (calc_gogyo_hankai(im_sm,im_sy)==4) || (calc_gogyo_hankai(im_sm,im_sy)==5)
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_hankai(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)]=gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)]+2
            end
            if d_12shiggno[im_sy]!=calc_gogyo_hankai(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)] += 1
            end
          end
        end
      end
      #支合１個 半会１個 （酉巳申、卯亥寅 以外） ---------------------------------------
      if isho_flag1+isho_flag2+isho_flag3==3
        #支合1個--------
        #日支・月支 
        if isho_flag1==1
          if (calc_gogyo_shigo(im_sd,im_sm)==1) || (calc_gogyo_shigo(im_sd,im_sm)==2) || (calc_gogyo_shigo(im_sd,im_sm)==3) || (calc_gogyo_shigo(im_sd,im_sm)==4) || (calc_gogyo_shigo(im_sd,im_sm)==5)
            #日支!=化ける支 → 化ける 、 日支=化ける支 → 変化なし
            if d_12shiggno[im_sd]!=calc_gogyo_shigo(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)] += 1
            end
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_shigo(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)]=gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)]+2
            end
          end
        elsif isho_flag2==1
          #日支・年支 
          if (calc_gogyo_shigo(im_sd,im_sy)==1) || (calc_gogyo_shigo(im_sd,im_sy)==2) || (calc_gogyo_shigo(im_sd,im_sy)==3) || (calc_gogyo_shigo(im_sd,im_sy)==4) || (calc_gogyo_shigo(im_sd,im_sy)==5)
            if d_12shiggno[im_sd]!=calc_gogyo_shigo(im_sd,im_sy)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sy)] += 1
            end
            if d_12shiggno[im_sy]!=calc_gogyo_shigo(im_sd,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sd,im_sy)] += 1
            end
          end
        elsif isho_flag3==1
          #月支・年支 
          if (calc_gogyo_shigo(im_sm,im_sy)==1) || (calc_gogyo_shigo(im_sm,im_sy)==2) || (calc_gogyo_shigo(im_sm,im_sy)==3) || (calc_gogyo_shigo(im_sm,im_sy)==4) || (calc_gogyo_shigo(im_sm,im_sy)==5)
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_shigo(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)]=gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)]+2
            end
            if d_12shiggno[im_sy]!=calc_gogyo_shigo(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)] += 1
            end
          end
        end
      end  
  
  
        #半会1個 ---------
        #日支・月支 
        if isho_flag1==2
          if (calc_gogyo_hankai(im_sd,im_sm)==1) || (calc_gogyo_hankai(im_sd,im_sm)==2) || (calc_gogyo_hankai(im_sd,im_sm)==3) || (calc_gogyo_hankai(im_sd,im_sm)==4) || (calc_gogyo_hankai(im_sd,im_sm)==5)
            #日支!=化ける支 → 化ける 、 日支=化ける支 → 変化なし
            if d_12shiggno[im_sd]!=calc_gogyo_hankai(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sd]] -= 1
              gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)] += 1
            end
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_hankai(im_sd,im_sm)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
              gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)]=gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)]+2
            end
          end
        
        elsif isho_flag2==2
          #日支・年支 
          if (calc_gogyo_hankai(im_sd,im_sy)==1) || (calc_gogyo_hankai(im_sd,im_sy)==2) || (calc_gogyo_hankai(im_sd,im_sy)==3) || (calc_gogyo_hankai(im_sd,im_sy)==4) || (calc_gogyo_hankai(im_sd,im_sy)==5)
            if d_12shiggno[im_sd]!=calc_gogyo_hankai(im_sd,im_sy)
               gg_adj_isho[d_12shiggno[im_sd]] -= 1
               gg_adj_isho[calc_gogyo_hankai(im_sd,im_sy)] += 1
            elsif d_12shiggno[im_sy]!=calc_gogyo_hankai(im_sd,im_sy)
               gg_adj_isho[d_12shiggno[im_sy]] -= 1
               gg_adj_isho[calc_gogyo_hankai(im_sd,im_sy)] += 1
            end
          end  
        elsif isho_flag3==2
          #月支・年支 
          if (calc_gogyo_hankai(im_sm,im_sy)==1) || (calc_gogyo_hankai(im_sm,im_sy)==2) || (calc_gogyo_hankai(im_sm,im_sy)==3) || (calc_gogyo_hankai(im_sm,im_sy)==4) || (calc_gogyo_hankai(im_sm,im_sy)==5)
            #月支!=化ける支 → 化ける（月支が化けるときは２個増減） 、 月支=化ける支 → 変化なし
            if d_12shiggno[im_sm]!=calc_gogyo_hankai(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2,gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)]=gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)]+2
            elsif d_12shiggno[im_sy]!=calc_gogyo_hankai(im_sm,im_sy)
              gg_adj_isho[d_12shiggno[im_sy]] -= 1
              gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)] += 1
            end  
          end
        end
  

  
  
      #半会2個 -------------------------------------------------
      if  (isho_flag1+isho_flag2+isho_flag3==4) && (isho_flag1==0 || isho_flag2==0 || isho_flag3==0)
        if isho_flag1==2
          gg_adj_isho[d_12shiggno[im_sd]] -= 1
          gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
          gg_adj_isho[d_12shiggno[im_sy]] -= 1
          gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)]=gg_adj_isho[calc_gogyo_hankai(im_sd,im_sm)]+4
        elsif isho_flag2==2
          gg_adj_isho[d_12shiggno[im_sd]] -= 1
          gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
          gg_adj_isho[d_12shiggno[im_sy]] -= 1
          gg_adj_isho[calc_gogyo_hankai(im_sd,im_sy)]=gg_adj_isho[calc_gogyo_hankai(im_sd,im_sy)]+4
        elsif isho_flag3==2
          gg_adj_isho[d_12shiggno[im_sd]] -= 1
          gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
          gg_adj_isho[d_12shiggno[im_sy]] -= 1
          gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)]=gg_adj_isho[calc_gogyo_hankai(im_sm,im_sy)]+4
        end
      end
  
      #支合2個 （二重支合）--------------------------------------------------
      if (isho_flag1==1 || isho_flag2==1 || isho_flag3==1) && (isho_flag1+isho_flag2+isho_flag3==2)
        if isho_flag1==0
          if (calc_gogyo_shigo(im_sd,im_sy) == 6 || calc_gogyo_shigo(im_sd,im_sy) == 7)
          else
            gg_adj_isho[d_12shiggno[im_sd]] -= 1
            gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
            gg_adj_isho[d_12shiggno[im_sy]] -= 1
            gg_adj_isho[calc_gogyo_shigo(im_sd,im_sy)]=gg_adj_isho[calc_gogyo_shigo(im_sd,im_sy)]+4
          end
  
        elsif isho_flag2==0
          if (calc_gogyo_shigo(im_sd,im_sy) == 6 || calc_gogyo_shigo(im_sd,im_sy) == 7)
          else
            gg_adj_isho[d_12shiggno[im_sd]] += 1
            gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
            gg_adj_isho[d_12shiggno[im_sy]] += 1
            gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)]=gg_adj_isho[calc_gogyo_shigo(im_sm,im_sy)]+4
          end
  
        elsif isho_flag3==0
          if (calc_gogyo_shigo(im_sd,im_sy) == 6 || calc_gogyo_shigo(im_sd,im_sy) == 7)
          else
            gg_adj_isho[d_12shiggno[im_sd]] -= 1
            gg_adj_isho[d_12shiggno[im_sm]]=gg_adj_isho[d_12shiggno[im_sm]]-2
            gg_adj_isho[d_12shiggno[im_sy]] -= 1
            gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)]=gg_adj_isho[calc_gogyo_shigo(im_sd,im_sm)]+4
          end
        end
      end
  
    #干合表による五行の調整
    gg_adj_kango_base=[0,0,0,0,0,0]  #天干の変化前五行を配列に
    gg_adj_kango_base[calc_gogyo_kan(im_kd)] += 1
    gg_adj_kango_base[calc_gogyo_kan(im_km)] += 1
    gg_adj_kango_base[calc_gogyo_kan(im_ky)] += 1
    im_kd_c=im_kd
    im_km_c=im_km
    im_ky_c=im_ky
    gg_adj_kango=[0,0,0,0,0,0]   #干合表での五行調整array 初期化
  
  
  
    #日支・月支 間
  
    if  im_kd-im_km.abs==5 #←干合条件
      if   im_kd==1 && d_12shiggno[im_sm]==3   #甲己干合（化土）で月支五行が土なら化ける
        im_kd_c=5,im_km_c=6
      elsif im_kd==6 && d_12shiggno[im_sm]==3
        im_kd_c=6,im_km_c=5
      elsif im_kd==2 && d_12shiggno[im_sm]==4 #庚乙干合（化金）で月支五行が金なら化ける
        im_kd_c=8,im_km_c=7
      elsif im_kd==7 && d_12shiggno[im_sm]==4
        im_kd_c=7,im_km_c=8
      elsif im_kd==3 && d_12shiggno[im_sm]==5 #丙辛干合（化水）で月支五行が水なら化ける       
        im_kd_c=9,im_km_c=10
      elsif im_kd==8 && d_12shiggno[im_sm]==5
        im_kd_c=10,im_km_c=9
      elsif im_kd==4 && d_12shiggno[im_sm]==1  #壬丁干合（化木）で月支が木なら化ける
        im_kd_c=2,im_km_c=1
      elsif im_kd==9 && d_12shiggno[im_sm]==1
        im_kd_c=1,im_km_c=2
      elsif im_kd==5 && d_12shiggno[im_sm]==2   #戊癸干合（化火）で月支が火なら化ける
        im_kd_c=3,im_km_c=4
      elsif im_kd==10 && d_12shiggno[im_sm]==2
        im_kd_c=4,im_km_c=3
      end
    end
  
    #日支・年支 間
    if  im_kd-im_ky.abs==5 #←干合条件
      if  im_kd==1 && d_12shiggno[im_sm]==3 #甲己干合（化土）で月支五行が土なら化ける
        im_kd_c=5
        im_ky_c=6
      elsif im_kd==6 && d_12shiggno[im_sm]==3
        im_kd_c=6
        im_ky_c=5
      elsif im_kd==2 && d_12shiggno[im_sm]==4 #庚乙干合（化金）で月支五行が金なら化ける
        im_kd_c=8
        im_ky_c=7
      elsif im_kd==7 && d_12shiggno[im_sm]==4
        im_kd_c=7
        im_ky_c=8
      elsif im_kd==3 && d_12shiggno[im_sm]==5  #丙辛干合（化水）で月支五行が水なら化ける       
        im_kd_c=9
        im_ky_c=10
      elsif im_kd==8 && d_12shiggno[im_sm]==5
        im_kd_c=10
        im_ky_c=9
      elsif im_kd==4 && d_12shiggno[im_sm]==1  #壬丁干合（化木）で月支が木なら化ける
        im_kd_c=2
        im_ky_c=1
      elsif im_kd==9 && d_12shiggno[im_sm]==1
        im_kd_c=1
        im_ky_c=2
      elsif im_kd==5 && d_12shiggno[im_sm]==2 #戊癸干合（化火）で月支が火なら化ける
        im_kd_c=3
        im_ky_c=4
      elsif im_kd==10 && d_12shiggno[im_sm]==2
        im_kd_c=4
        im_ky_c=3
      end
    end
  
  
    #月支・年支 間
    if  im_km-im_ky.abs==5 #←干合条件
      if  im_km==1 && d_12shiggno[im_sm]==3 #甲己干合（化土）で月支五行が土なら化ける
        im_km_c=5
        im_ky_c=6
      elsif im_km==6 && d_12shiggno[im_sm]==3
        im_km_c=6
        im_ky_c=5
      elsif im_km==2 && d_12shiggno[im_sm]==4 #庚乙干合（化金）で月支五行が金なら化ける
        im_km_c=8
        im_ky_c=7
      elsif im_km==7 && d_12shiggno[im_sm]==4
        im_km_c=7
        im_ky_c=8
      elsif im_km==3 && d_12shiggno[im_sm]==5 #丙辛干合（化水）で月支五行が水なら化ける       
        im_km_c=9
        im_ky_c=10
      elsif im_km==8 && d_12shiggno[im_sm]==5
        im_km_c=10
        im_ky_c=9
      elsif im_km==4 && d_12shiggno[im_sm]==1 #壬丁干合（化木）で月支が木なら化ける
        im_km_c=2
        im_ky_c=1
      elsif im_km==9 && d_12shiggno[im_sm]==1
        im_km_c=1
        im_ky_c=2
      elsif im_km==5 && d_12shiggno[im_sm]==2   #戊癸干合（化火）で月支が火なら化ける
        im_km_c=3
        im_ky_c=4
      elsif im_km==10 && d_12shiggno[im_sm]==2
        im_km_c=4
        im_ky_c=3
      end
    end
  
  
    gg_adj_kango[calc_gogyo_kan(im_kd_c)] += 1
    gg_adj_kango[calc_gogyo_kan(im_km_c)] += 1
    gg_adj_kango[calc_gogyo_kan(im_ky_c)] += 1
  
    # 基本の五行に三合会局・方三位・位相法・干合表を考慮して 五行を調整する
  
    gogyo_base=[0,moku,ka,dou,gon,sui]       #← 基本五行に三合会局・方三位を加味してます
    gogyo_last=[0,0,0,0,0,0]
  
    (0...6).each do |i|
      gogyo_last[i]=gogyo_base[i]+gg_adj_isho[i]-gg_adj_kango_base[i]+gg_adj_kango[i]
    end
  
    #位相法表で酉辰(化金・土)、卯戌(化木・土) 調整後五行に土>=3あれば。
    toritatu_flag=0 #酉辰 組合せ個数
    if calc_gogyo_cng(im_sd,im_sm)==6
      toritatu_flag += 1
    end
    if im_sd+im_sm+im_sy==20 && toritatu_flag==2
      toritatu_flag=3 #flag=3なら金１個と土2個    flag=2なら金２個と土１個
      uinu_flag=0 #卯戌 組合せ個数
    end
    if calc_gogyo_cng(im_sd,im_sm)==7
      uinu_flag += 1
    end
    if (im_sd+im_sm+im_sy==26) && (uinu_flag==2)
      uinu_flag=3 #土2個
    end
    #----------------------ここの下に 月支が酉でも辰でもでもなければどうなる？ ----------------------------
  
  
    #酉（金）辰（土）調整
    if  (sangou_flag==0) && (toritatu_flag==1) && (special_flag==0)       #１組の場合
      if gogyo_last[3]>=3
        if im_sm==10
          gogyo_last[3]=gogyo_last[3]+2
          gogyo_last[4]=gogyo_last[4]-2 #土>=３ しかも 月支が酉（金）なので 土+2 金-2
        end
        if im_sm==5
          gogyo_last[3] += 1
          gogyo_last[4] -= 1
        end
      elsif
        if im_sm==5
          gogyo_last[3]=gogyo_last[3]-2
          gogyo_last[4]=gogyo_last[4]+2
        end
        if im_sm==10
          gogyo_last[3] -= 1
          gogyo_last[4] += 1
        end
      end
    end
  
    if  (sangou_flag==0) && (toritatu_flag==2) && (special_flag==0) #地支に金２個と土１個の場合
      if gogyo_last[3]>=3
        if im_sm==10
          gogyo_last[3]=gogyo_last[3]+3,gogyo_last[4]=gogyo_last[4]-3
        end  #土>=３ しかも 月支が酉（金）で残りが酉（金）辰（土）なので 土+3 金-3
        if im_sm==5
          gogyo_last[3]=gogyo_last[3]+2,gogyo_last[4]=gogyo_last[4]-2 #月支が辰（土）なので 土+2 金-2
        end
      elsif
        if im_sm==5
          gogyo_last[3]=gogyo_last[3]-2,gogyo_last[4]=gogyo_last[4]+2 #月支が辰（土）で化金なので 土-2 金+2
        end
        if im_sm==10
          gogyo_last[3] -= 1
          gogyo_last[4] += 1 #月支が酉（金）で残りが酉（金）辰（土）で化金なので 土-1金+1
        end
      end
    end
  
    if  (sangou_flag==0) && (toritatu_flag==3) && (special_flag==0) #地支に金１個と土２個の場合
      if gogyo_last[3]>=3
        if im_sm==10
          gogyo_last[3]=gogyo_last[3]+2,gogyo_last[4]=gogyo_last[4]-2 #土>=３ しかも 月支が酉（金）なので 土+2 金-2
        end
        if im_sm==5
          gogyo_last[3] += 1
          gogyo_last[4] -= 1 #月支が辰（土）なので 土+1 金-1
        end
      elsif
        if im_sm==5
          gogyo_last[3]=gogyo_last[3]-3,gogyo_last[4]=gogyo_last[4]+3 #月支が辰（土）で残りが辰（土）酉（金）で化金なので 土-3 金+3
        end
        if im_sm==10
          gogyo_last[3]=gogyo_last[3]-2,gogyo_last[4]=gogyo_last[4]+2 #月支が酉（金）で残りが辰（土）２個で化金なので 土-2金+2
        end
      end
    end
  
  
    #卯（木）戌（土）調整
    if  (sangou_flag==0) && (uinu_flag==1) && (special_flag==0) #１組の場合
      if gogyo_last[3]>=3
        if im_sm==4
          gogyo_last[3]=gogyo_last[3]+2,gogyo_last[1]=gogyo_last[1]-2 #土>=３ しかも 月支が卯（木）なので 土+2 木-2
        end
        if im_sm==11
          gogyo_last[3] += 1
          gogyo_last[1] -= 1
        end
      elsif
        if im_sm==11
          gogyo_last[3]=gogyo_last[3]-2,gogyo_last[1]=gogyo_last[1]+2
        end
        if im_sm==4
          gogyo_last[3] -= 1
          gogyo_last[1] += 1
        end
      end
    end
  
    if  (sangou_flag==0) && (uinu_flag==2) && (special_flag==0) #地支に木２個と土１個の場合
      if gogyo_last[3]>=3
        if im_sm==4
          gogyo_last[3]=gogyo_last[3]+3,gogyo_last[1]=gogyo_last[1]-3 #土>=３ しかも 月支が卯（木）で残りが卯（木）戌（土）なので 土+3 木-3
        end
        if im_sm==11
          gogyo_last[3]=gogyo_last[3]+2,gogyo_last[1]=gogyo_last[1]-2 #月支が戌（土）で残りが卯（木）２個なので 土+2 木-2
        end
      elsif
        if im_sm==11
          gogyo_last[3]=gogyo_last[3]-2,gogyo_last[1]=gogyo_last[1]+2 #月支が戌（土）で残りが卯（木）２個で化木なので 土-2 木+2
        end
        if im_sm==4
          gogyo_last[3] -= 1
          gogyo_last[1] += 1 #月支が卯（木）で残りが卯（木）戌（土）で化木なので 土-1木+1
        end
      end
    end
  
    if  (sangou_flag==0) && (uinu_flag==3) && (special_flag==0) #地支に木１個と土２個の場合
      if gogyo_last[3]>=3
        if im_sm==4
          gogyo_last[3]=gogyo_last[3]+2,gogyo_last[1]=gogyo_last[1]-2 #土>=３ しかも 月支が卯（木）残りが戌(土）２個なので 土+2 木-2
          if im_sm==11
            gogyo_last[3] += 1
            gogyo_last[1] -= 1 #月支が戌（土）残りが卯（木）戌（土）なので 土+1 木-1
          end
        elsif
          if im_sm==11
            gogyo_last[3]=gogyo_last[3]-3
            gogyo_last[1]=gogyo_last[1]+3 #月支が戌（土）で残りが戌（土）卯（木）で化木なので 土-3 木+3
          end
          if im_sm==4
            gogyo_last[3] = gogyo_last[3]-2
            gogyo_last[1]=gogyo_last[1]+2    #月支が卯（木）で残りが戌（土）２個で化木なので 土-2木+2
          end
        end
      end
    end
  
  
      moku=gogyo_last[1]
      ka=gogyo_last[2]
      dou=gogyo_last[3]
      gon=gogyo_last[4]
      sui=gogyo_last[5]
  
      #全体守護神 計算 
      z_shugoshin_flag=0
      z_shugoshin=0
      imigami=0
      max_gogyo=0
      nikkan_gogyo=(im_kd/2).round
      if gogyo_last.max >=4 #五行のどれかが４以上あるなら全体守護神
        max_gogyo=gogyo_last.index(gogyo_last.max)  #最多五行の決定（1,2,3,4,5)のどれか
        z_shugoshin_flag=1
        z_shugoshin=d_z_shugo[nikkan_gogyo][max_gogyo][0]      #全体守護神 決定
        imigami=d_z_shugo[nikkan_gogyo][max_gogyo][1]          #忌神 決定
  
      end
  
  
  
      #伴星 算出 
      bansei=0
      if im_ky<=5
        bansei=im_ky+5
      end
      if im_ky>=6
        bansei=im_ky-5
      end
  
      bansei = calc_10shu(im_kd,bansei)
      bansei = d_10shu[bansei]
  
  
      #才能  1:北天運  2:西天運  3:東天運  4:南天運
      tenun=[3,4,9,10]
      tenun_flag = 0
      tenunmei=0
      if tenun.exclude?(ym_sn) && tenun.exclude?(ym_se) && tenun.exclude?(ym_sc) && tenun.exclude?(ym_sw) && tenun.exclude?(ym_ss)
        tenunmei="南天運"
        tenun_flag=4
      elsif  tenun.exclude?(ym_sn)&& tenun.exclude?(ym_sc) && tenun.exclude?(ym_ss) && tenun.include?(ym_se)  || tenun.include?(ym_sw)
        tenunmei="東天運"
        tenun_flag=3
      elsif tenun.exclude?(ym_se)  && tenun.exclude?(ym_sc)  && tenun.exclude?(ym_sw)  && tenun.include?(ym_sn) || tenun.include?(ym_ss)
        tenunmei="西天運"
        tenun_flag=2
      else
        tenunmei="北天運"
        tenun_flag=1
      end
  
      #剋線占技  剋線個数 と 従星算出 
    chishi=[0,0,0,0,0,0,0,0,0,0,0] #地支の数 集計
    chishi[ym_sn]=chishi[ym_sn]+1
    chishi[ym_sw]=chishi[ym_sw]+1
    chishi[ym_sc]=chishi[ym_sc]+1
    chishi[ym_se]=chishi[ym_se]+1
    chishi[ym_ss]=chishi[ym_ss]+1
  
  
    kokusen=[0,0,0,0,0,0,0,0,0,0,0]
    if calc_kokusen(ym_sn,ym_sw)==2
      kokusen[ym_sn]=kokusen[ym_sn]+1
      kokusen[ym_sw]=kokusen[ym_sw]+1
    end
    if calc_kokusen(ym_sn,ym_sc)==2
      kokusen[ym_sn]=kokusen[ym_sn]+1
      kokusen[ym_sc]=kokusen[ym_sc]+1
    end
    if calc_kokusen(ym_sn,ym_se)==2
      kokusen[ym_sn]=kokusen[ym_sn]+1
      kokusen[ym_se]=kokusen[ym_se]+1
    end
    if calc_kokusen(ym_sn,ym_ss)==2
      kokusen[ym_sn]=kokusen[ym_sn]+1
      kokusen[ym_ss]=kokusen[ym_ss]+1
    end
    if calc_kokusen(ym_sw,ym_sc)==2
      kokusen[ym_sw]=kokusen[ym_sw]+1
      kokusen[ym_sc]=kokusen[ym_sc]+1
    end
    if calc_kokusen(ym_sw,ym_se)==2
      kokusen[ym_sw]=kokusen[ym_sw]+1
      kokusen[ym_se]=kokusen[ym_se]+1
    end
    if calc_kokusen(ym_sw,ym_ss)==2
      kokusen[ym_sw]=kokusen[ym_sw]+1
      kokusen[ym_ss]=kokusen[ym_ss]+1
    end
    if calc_kokusen(ym_sc,ym_se)==2
      kokusen[ym_sc]=kokusen[ym_sc]+1
      kokusen[ym_se]=kokusen[ym_se]+1
    end
    if calc_kokusen(ym_sc,ym_ss)==2
      kokusen[ym_sc]=kokusen[ym_sc]+1
      kokusen[ym_ss]=kokusen[ym_ss]+1
    end
    if calc_kokusen(ym_se,ym_ss)==2
      kokusen[ym_se]=kokusen[ym_se]+1
      kokusen[ym_ss]=kokusen[ym_ss]+1
    end
  
    (0...11).each do |i|
      if chishi[i]!=0
        kokusen[i]=kokusen[i]/chishi[i]
      end
    end
  
  
  
      #数理エネルギー 算出 
    kan_no=[0,0,0,0,0,0,0,0,0,0,0]
    kan_no[im_kd]=kan_no[im_kd]+1 #命式日干
  
    kan_no[im_km]=kan_no[im_km]+1 #命式月干
  
    kan_no[im_ky]=kan_no[im_ky]+1 #命式��干
  
  
    #支 合計算出 ルーチン     裏蔵干の支の合計 
    (1...4).each do |i|
      kan_no[calc_ura_zokan(im_sd,i)] += 1 #日支から
      kan_no[calc_ura_zokan(im_sm,i)] += 1 #月支から
      kan_no[calc_ura_zokan(im_sy,i)] += 1 #年支から
    end
  
  
  
    #エネルギー値 小計 合計
    energy_sum1=[0,0,0,0,0,0,0,0,0,0,0]
    (1...11).each do |i|
      energy_sum1[i]=calc_12jyu(i,im_sd)+calc_12jyu(i,im_sm)+calc_12jyu(i,im_sy)
    end
    energy_sum2=[0,0,0,0,0,0]
    (0...5).each do |i|
      energy_sum2[i+1]=energy_sum1[i*2+1]*kan_no[i*2+1]+energy_sum1[i*2+2]*kan_no[i*2+2]
    end
    @energy_sum2 = energy_sum2
    logger.debug("energy_sum2= #{energy_sum2}")
  
    #エネルギー値総合計 
    energy_sum0=0
    (1...6).each do |i|
      energy_sum0=energy_sum0+energy_sum2[i]
    end
  
    #数理エネルギー 五行 
    suri_gogyo=[0,0,0,0,0]
    (0...5).each do |i|
      suri_gogyo[i]=calc_suri_gogyo(im_kd,i)
    end
  
    #0歳の西暦 
    zero_y = 0
    if b_m0==1 || (b_m0==2 && b_d0 < calc_setsu(b_y0,2))
      zero_y = b_y0-1
    else
      zero_y=b_y0
    end
  
  
    #命式の支を使ってのエネルギー計算 ルーチン 
  
    # def calc_energy1(a,b,c)
    #   a=im_sd
    #   b=im_sm
    #   c=im_sy
    #   no_of_kan=[0,0,0,0,0,0,0,0,0,0,0]
    #   no_of_kan[im_kd]=no_of_kan[im_kd]+1 #命式日干
    #   no_of_kan[im_km]=no_of_kan[im_km]+1 #命式月干
    #   no_of_kan[im_ky]=no_of_kan[im_ky]+1 #命式年干
  
    # #大運・年運の干の合計
    # (1...4).each do |i|
    #   no_of_kan[calc_ura_zokan(a,i)] += 1 #日支から
    #   no_of_kan[calc_ura_zokan(b,i)] += 1 #月支から
    #   no_of_kan[calc_ura_zokan(c,i)] += 1 #年支から
    # end
  
  
    # energy_kan=[0,0,0,0,0,0,0,0,0,0,0]
    # (1...11).each do |i|
    #   energy_kan[i]=calc_12jyu(i,im_sd)+calc_12jyu(i,im_sm)+calc_12jyu(i,im_sy)
    # end
  
    # x= s.slice(k*2, 2).to_i
    # return x
    # end
  
        #大運・年運の支を使ってのエネルギー計算 ルーチン 
  
  
  
      #気心体 検査
      kst_ar=[ym_sn,ym_sw,ym_sc,ym_se,ym_ss]
      kst_kan=[0,0,0,0,0]
      k=0
      if   kst_ar.include?(1) && kst_ar.include?(4) && kst_ar.include?(5)
        kst_kan[k]=4
        k=k+1
      elsif kst_ar.include?(2) && kst_ar.include?(3) && kst_ar.include?(6)
        kst_kan[k]=3
        k=k+1
      elsif  kst_ar.include?(3) && kst_ar.include?(6) && kst_ar.include?(7)
        kst_kan[k]=6
        k=k+1
      elsif kst_ar.include?(4) && kst_ar.include?(5) && kst_ar.include?(8)
        kst_kan[k]=5
        k=k+1
      elsif kst_ar.include?(5) && kst_ar.include?(8) && kst_ar.include?(9)
        kst_kan[k]=8
        k=k+1
      elsif kst_ar.include?(6) && kst_ar.include?(7) && kst_ar.include?(10)
        kst_kan[k]=7
        k=k+1
      elsif kst_ar.include?(7) && kst_ar.include?(10) && kst_ar.include?(1)
        kst_kan[k]=10
        k=k+1
      elsif kst_ar.include?(8) && kst_ar.include?(9) && kst_ar.include?(2)
        kst_kan[k]=9
        k=k+1
      elsif kst_ar.include?(9) && kst_ar.include?(2) && kst_ar.include?(3)
        kst_kan[k]=2
        k=k+1
      elsif kst_ar.include?(10) && kst_ar.include?(1) && kst_ar.include?(4)
        kst_kan[k]=1
        k=k+1
      end
  
  
      sainou = 0
      sainou_flag = 0     #剋線数1位が2星ある場合   sainou_flag==1 kokusen配列の中で一番剋線の多い星＝kokusen.max)
      if  kokusen[1]+kokusen[2]+kokusen[3]+kokusen[4]+kokusen[5]+kokusen[6]+kokusen[7]+kokusen[8]+kokusen[9]+kokusen[10] != 0 #刻線が全くない人は才能の星はない。
          if kokusen.index(kokusen.max)!=kokusen.rindex(kokusen.max)
            sainou_flag=1
          elsif (sainou_flag==1)&& calc_juni(kokusen.index(kokusen.max),tenun_flag)<=calc_juni(kokusen.rindex(kokusen.max),tenun_flag)
            sainou_flag=2   #sainou_flag=2 配列の左側から表示
  
          elsif (sainou_flag==1)&& calc_juni(kokusen.index(kokusen.max),tenun_flag)>calc_juni(kokusen.rindex(kokusen.max),tenun_flag)
            sainou_flag=3   #sainou_flag=3 配列の右側から表示
  
          elsif sainou_flag==0 
            sainou = "#{d_10shu[kokusen.index(kokusen.max)]}(#{calc_juni(kokusen.index(kokusen.max),tenun_flag)})"
          elsif sainou_flag==2
            sainou = "#{d_10shu[kokusen.index(kokusen.max)]}(#{calc_juni(kokusen.index(kokusen.max),tenun_flag)}),#{d_10shu[kokusen.rindex(kokusen.max)]}(#{calc_juni(kokusen.rindex(kokusen.max),tenun_flag)})"
          elsif sainou_flag==3
            sainou = "#{d_10shu[kokusen.index(kokusen.max)]}(#{calc_juni(kokusen.rindex(kokusen.max),tenun_flag)}),#{d_10shu[kokusen.index(kokusen.max)]}(#{calc_juni(kokusen.index(kokusen.max),tenun_flag)})"
          end
      else
        sainou=""
      end
  
  
      #エネルギー値  1:最身強 2:身強 3:身中 4:身弱 5:最身弱
        energy = (d_12jyuenergy[ym_jm]).to_i+(d_12jyuenergy[ym_jy]).to_i+(d_12jyuenergy[ym_jd]).to_i
      mikyo_flag = 0
      energy_ar=[ym_jd,ym_jm,ym_jy]
      mikyo_ar=["","最身強","身強","身中","身弱","最身弱"]
  
  
      if       energy>=31 || (energy_ar.sort.reverse.slice(1,3)=="12,12")
               mikyo_flag=1
      elsif  energy<=30 && energy>=27 || energy_ar.sort.reverse[2]=="12" || energy_ar.sort.reverse.slice(0,2)=="3,3" || energy_ar.sort.reverse.slice(1,3)=="3,3"
              mikyo_flag=2
      elsif energy<=26 && energy>=13
              mikyo_flag=3
      elsif energy<=12 && energy>=9
              mikyo_flag=4
      else
              mikyo_flag=5
      end
  
  
  
      #大運表 全干支算出
      im_pm_t = 0
      if taiunhoukou == 1
       im_pm_t = im_pm+1      #順行運 本人月干支の次の干支
      elsif taiunhoukou == -1
       im_pm_t = im_pm-1       #逆行運 本人月干支の前の干支
  
        taiun_kan=0
        taiun_kan1=0
        taiun_kan2=0
        taiun_kan3=0
        taiun_kan4=0
        taiun_kan5=0
        taiun_kan6=0
        taiun_kan7=0
      end
      if  im_pm_t%10==0
        taiun_kan=10
      else
        taiun_kan=im_pm_t%10
      end
  
      if taiunhoukou==1
        taiun_kan1=(taiun_kan+1)%10
        taiun_kan2=(taiun_kan+2)%10
        taiun_kan3=(taiun_kan+3)%10
        taiun_kan4=(taiun_kan+4)%10
        taiun_kan5=(taiun_kan+5)%10
        taiun_kan6=(taiun_kan+6)%10
        taiun_kan7=(taiun_kan+7)%10
      end
  
  
      if taiunhoukou==-1
        taiun_kan1=(taiun_kan+9)%10
        taiun_kan2=(taiun_kan+8)%10
        taiun_kan3=(taiun_kan+7)%10
        taiun_kan4=(taiun_kan+6)%10
        taiun_kan5=(taiun_kan+5)%10
        taiun_kan6=(taiun_kan+4)%10
        taiun_kan7=(taiun_kan+3)%10
      end
  
      if  taiun_kan==0
        taiun_kan=10
      elsif  taiun_kan1==0
        taiun_kan1=10
      elsif taiun_kan2==0
        taiun_kan2=10
      elsif
        taiun_kan3==0
        taiun_kan3=10
      elsif taiun_kan4==0
        taiun_kan4=10
      elsif taiun_kan5==0
        taiun_kan5=10
      elsif taiun_kan6==0
        taiun_kan6=10
      elsif  taiun_kan7==0
        taiun_kan7=10
      end
  
      taiun_shi=im_pm_t%12
      taiun_shi1=0
      taiun_shi2=0
      taiun_shi3=0
      taiun_shi4=0
      taiun_shi5=0
      taiun_shi6=0
      taiun_shi7=0
  
      if taiunhoukou==1
        taiun_shi1=(taiun_shi+1)%12
        taiun_shi2=(taiun_shi+2)%12
        taiun_shi3=(taiun_shi+3)%12
        taiun_shi4=(taiun_shi+4)%12
        taiun_shi5=(taiun_shi+5)%12
        taiun_shi6=(taiun_shi+6)%12
        taiun_shi7=(taiun_shi+7)%12
      elsif taiunhoukou==-1
        taiun_shi1=(taiun_shi+11)%12
        taiun_shi2=(taiun_shi+10)%12
        taiun_shi3=(taiun_shi+9)%12
        taiun_shi4=(taiun_shi+8)%12
        taiun_shi5=(taiun_shi+7)%12
        taiun_shi6=(taiun_shi+6)%12
        taiun_shi7=(taiun_shi+5)%12
      end
  
      if taiun_shi==0
        taiun_shi=12
      elsif taiun_shi1==0
        taiun_shi1=12
      elsif taiun_shi2==0
        taiun_shi2=12
      elsif taiun_shi3==0
        taiun_shi3=12
      elsif taiun_shi4==0
        taiun_shi4=12
      elsif taiun_shi5==0
        taiun_shi5=12
      elsif taiun_shi6==0
        taiun_shi6=12
      elsif taiun_shi7==0
        taiun_shi7=12
      end
  
  
      #三合会局     sangou_flag=1,2,3,4 なら 三合会局  五行調整のロジックでフラグセット済み
  
      #位相法番号  calc_gousan表に対応   → 1半会 2支合 3方三位 4対冲 5刑 6破 7害 8支合・破 9刑・冲 10刑・害 11刑・破 12刑・支合・破  
  
      #日干用 大半会 合法散法 天剋 洩天 検査 ルーチン
      

  
      def calc_isoho(a,b,c,d)  #a:im_kd,im_md,im_yd    b:im_sd,im_sm,im_sy     c:taiun_kan   d:taiun_shi  (or c:calc_nenkan  d:calc_nenshi)
  
        x=0
  
        if a==c && calc_gousan(b,d)==1
            x="大半会"    #年干=月干で年月日のどれかが半会
        else
            x=d_gousan[calc_gousan(b,d)]
        end
        
        
        if  (a-c).abs==5 && calc_gousan(b,d)==2
            x="干合支合"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==7
            x="干合支害"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==5
            x="干合支刑"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==8
            x="干支合・破"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==9
            x="干合合・干刑・冲"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==10
            x="干害・干刑"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==11
            x="干刑・破"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==12
            x="干合合・干刑・破"
        elsif (calc_soukoku(a,c)==3 || calc_soukoku(a,c)==4) && calc_gousan(b,d)==4
            x="天剋"
        elsif (calc_soukoku(a,c)==3 || calc_soukoku(a,c)==4) && calc_gousan(b,d)==9
            x="天剋・刑"
        elsif (calc_soukoku(a,c)==1 || calc_soukoku(a,c)==2) && calc_gousan(b,d)==5
            x="洩天・刑"
        elsif ((calc_soukoku(a,c)==1 || calc_soukoku(a,c)==2) && (b==d)) && calc_gousan(b,d)!=5
            x="洩天"
        elsif a==c && b==d
            x="律音"
        elsif a==c && (b-d).abs==6
            x="納音"
        elsif  x==0
            x="&nbsp;"
        end
        return x
      end
      
      #月干・年干用 大半会 合法散法 天剋 洩天 検査 ルーチン   （洩天地支は日干のみ表示だから）
      def calc_isoho2(a,b,c,d)  #a:im_kd,im_md,im_yd    b:im_sd,im_sm,im_sy     c:taiun_kan   d:taiun_shi  (or c:calc_nenkan  d:calc_nenshi)
        x=0
  
        if a==c && calc_gousan(b,d)==1
          x="大半会" #年干=月干で年月日のどれかが半会
        else
          x=d_gousan[calc_gousan(b,d)]
        end
        
  
        if  (a-c).abs==5 && calc_gousan(b,d)==2
          x="干合支合"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==7
          x="干合支害"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==5
          x="干合支刑"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==8
          x="干合合・破"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==9
          x="干合合・干刑・冲"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==10
          x="干合合・干害・干刑"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==11
          x="干合合・干刑・破"
        elsif  (a-c).abs==5 && calc_gousan(b,d)==12
          x="干合合・干刑・破"
        elsif (calc_soukoku(a,c)==3 || calc_soukoku(a,c)==4) && calc_gousan(b,d)==4
          x="天剋"
        elsif (calc_soukoku(a,c)==3 || calc_soukoku(a,c)==4) && calc_gousan(b,d)==9
          x="天剋・刑"
        elsif a==c && b==d
          x="律音"
        elsif a==c&& (b-d).abs==6
          x="納音"
        elsif x==0
          x="&nbsp;"
        end
        return x
      end
  
      #大運初旬用 大半会 合法散法 検査 ルーチン     大運初旬は律音が 戊＝丙 己＝丁
  

      def calc_isoho3(a,b,c,d) #a:im_kd,im_md,im_yd    b:im_sd,im_sm,im_sy     c:taiun_kan   d:taiun_shi  (or c:calc_nenkan  d:calc_nenshi)
          x=0
          
          d_gousan=[" ","半会","支合","方三位","冲","刑","破","害","支合・破","刑・冲","刑・害","刑・破","支合・刑・破"]

  
          if a==c && calc_gousan(b,d)==1
            x="大半会" #年干=月干で年月日のどれかが半会
          else
            x=d_gousan[calc_gousan(b,d)]
          end
  
          if  (a-c).abs==5 && calc_gousan(b,d)==2
            x="干合支合"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==7
            x="干合支害"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==5
            x="干合支合"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==8
            x="干支合・破"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==9
            x="干合合・干刑・冲"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==10
            x="干害・干刑"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==11
            x="干刑・破"
          elsif  (a-c).abs==5 && calc_gousan(b,d)==12
            x="干合合・干刑・破"
          elsif (calc_soukoku(a,c)==3 || calc_soukoku(a,c)==4) && calc_gousan(b,d)==4
            x="天剋"
          elsif (calc_soukoku(a,c)==3 || calc_soukoku(a,c)==4) && calc_gousan(b,d)==9
            x="天剋・刑"
          elsif (calc_soukoku(a,c)==1 || calc_soukoku(a,c)==2) && calc_gousan(b,d)==5
            x="洩天・刑"
          elsif ((calc_soukoku(a,c)==1 || calc_soukoku(a,c)==2) && (b==d)) && calc_gousan(b,d)!=5
            x="洩天"
          elsif a==c && b==d
            x="律音"
          elsif ((a==5) && (c==3)) || ((a==3) && (c==5)) || ((a==6) && (c==4)) || ((a==4) && (c==6))
            x=="律音"
          elsif (a==c) && (b-d.abs==6)
            x="納音"
          elsif  x==0
            x="&nbsp;"
          end
          return x
      end
  
  
      bg_flag=0    #大運表 初旬 干支 背景色 flag
      # 日干と大運干支
      if  calc_isoho3(im_kd,im_sd,taiun_kan,taiun_shi)=="大半会" || calc_isoho3(im_kd,im_sd,taiun_kan,taiun_shi)=="天剋" || calc_isoho3(im_kd,im_sd,taiun_kan,taiun_shi)=="納音" || calc_isoho3(im_kd,im_sd,taiun_kan,taiun_shi)=="律音" || calc_isoho3(im_kd,im_sd,taiun_kan,taiun_shi)=="天剋・刑"
        bg_flag=1
      #月干と大運干支
      elsif  calc_isoho3(im_km,im_sm,taiun_kan,taiun_shi)=="大半会" || calc_isoho3(im_km,im_sm,taiun_kan,taiun_shi)=="天剋" || calc_isoho3(im_km,im_sm,taiun_kan,taiun_shi)=="納音" || calc_isoho3(im_km,im_sm,taiun_kan,taiun_shi)=="律音" || calc_isoho3(im_km,im_sm,taiun_kan,taiun_shi)=="天剋・刑"
        bg_flag=1
      #年干と大運干支
      elsif  calc_isoho3(im_ky,im_sy,taiun_kan,taiun_shi)=="大半会" || calc_isoho3(im_ky,im_sy,taiun_kan,taiun_shi)=="天剋" || calc_isoho3(im_ky,im_sy,taiun_kan,taiun_shi)=="納音" || calc_isoho3(im_ky,im_sy,taiun_kan,taiun_shi)=="律音" || calc_isoho3(im_ky,im_sy,taiun_kan,taiun_shi)=="天剋・刑"
        bg_flag=1
      end
  
  
  
      #納音 検査 
      nachin_flag=0
      if (im_ky==im_km && (im_sy-im_sm).abs==6) || (im_ky==im_kd && (im_sy-im_sd).abs==6) || (im_kd==im_km && (im_sd-im_sm).abs==6)
        nachin_flag=1
      end
  
  
      #大半会 検査 
      daihankai=0
      if (im_ky==im_km) && (calc_gousan(im_sy,im_sm)==1)
        daihankai=1   #年干=月干で年月日のどれかが半会
      elsif (im_ky==im_kd) && (calc_gousan(im_sy,im_sd)==1)
        daihankai=2 #年干＝日干で年月日のどれかが半会
      elsif (im_km==im_kd) && calc_gousan(im_sm,im_sd)==1
        daihankai=3 #月干＝日干で年月日のどれかが半会
      end
  
      #律音 検査
      richin_flag=0
      if im_py==im_pd
        richin_flag=1
      elsif im_pm==im_pd
        richin_flag=2
      elsif im_py==im_pm
        richin_flag=3
      end
  
      #納音 検査 
      nachin_flag=0
      if (im_ky==im_km &&(im_sy-im_sm).abs==6) || (im_ky==im_kd && (im_sy-im_sd).abs==6) || (im_kd==im_km && (im_sd-im_sm).abs==6)
        nachin_flag=1
      end
  
      #合法・散法 算出    → 1半会 2支合 3方三位 4対冲 5刑 6破 7害 8支合・破 9刑���冲 10刑・害 11刑・破 12刑・支合・破
  
      #干合 算出
      kangou_flag=0
      if  (im_kd-im_km).abs==5 || (im_kd-im_ky).abs==5 || (im_km-im_ky).abs==5
        kangou_flag=1
      end
  
      #天剋地冲 検査
      tenkoku_flag=0
      if (calc_soukoku(im_kd,im_ky)==3 || calc_soukoku(im_kd,im_ky)==4) && (im_sy-im_sd).abs==6
        tenkoku_flag=1  #年・日
      elsif (calc_soukoku(im_kd,im_km)==3 || calc_soukoku(im_kd,im_km)==4) && (im_sm-im_sd).abs==6
        tenkoku_flag=2 #日・月
      elsif (calc_soukoku(im_km,im_ky)==3 || calc_soukoku(im_km,im_ky)==4) && (im_sm-im_sy).abs==6
        tenkoku_flag=2  #年・月
      end
  
      #洩天地支 検査
      eiten_flag=0
      if (calc_soukoku(im_kd,im_ky)==1 || calc_soukoku(im_kd,im_ky)==2) &&(im_sy==im_sd)
        eiten_flag=1  #年・日
      elsif (calc_soukoku(im_kd,im_km)==1 || calc_soukoku(im_kd,im_km)==2) &&(im_sm==im_sd)
        eiten_flag=2 #日・月
      elsif (calc_soukoku(im_km,im_ky)==1 || calc_soukoku(im_km,im_ky)==2) &&(im_sm==im_sy)
        eiten_flag=2  #年・月
      end
  
  
  
              
  
      # 宿命天中殺 計算   shukumei_flag (1:生年 2:生月 3:生日) shukumei_flag1 (4:日座 5:二中殺 6:全天中殺)   gokan_flag 1:互換       nichii_flag 1:日居
      shukumei_ar=["","生年","生月","生日","日座","二中殺","全天中殺"]
  
      nen_tx = 0
      nen_tx=11-cint((im_py-1)/10)*2 #年干支から算出した宿命天中殺の支
  
  
      shukumei_flag = 0
      shukumei_flag1 = 0
      nichii_flag = 0
      gokan_flag = 0
      if  (im_tx==im_sy || im_tx+1==im_sy) && (im_tx==im_sm || im_tx+1==im_sm) && (im_pd==11 || im_pd==12)
        shukumei_flag1=6
      elsif  (im_tx==im_sy || im_tx+1==im_sy) && (im_tx==im_sm || im_tx+1==im_sm)
        shukumei_flag1=5
      elsif im_tx==im_sy || im_tx+1==im_sy
        shukumei_flag=1
      elsif im_tx==im_sm || im_tx+1==im_sm
        shukumei_flag=2
      else
        shukumei_flag=0
      end
  
      if im_tx==im_sd || im_tx+1==im_sd
        shukumei_flag=3
      elsif im_pd==11 || im_pd==12
        shukumei_flag1=4
      elsif (im_tx==im_sy || im_tx+1==im_sy) && (im_sd==nen_tx ||im_sd==nen_tx+1)
        gokan_flag=1
      elsif im_pd==41 || im_pd==42
        nichii_flag=1
      end
  
      #d_10shu=new Array("  ","1貫索","2石門","3鳳閣","4調舒","5祿存","6司祿","7車騎","8牽牛","9龍高","10玉堂")
            #d_12jyuen=new Array("  ","天馳 1","天極 2","天報 3","天胡 4","天庫 5","天印 6","天恍 7","天堂 8","天貴 9","天南 10","天祿 11","天将 12")
            #特殊な組合せ 算出  1:傷相 2病相 3罪相 4抗相・精相 5独相 6情相 7色相 8団相 9破相 10消相 11三奇星 12七殺
      ar_12jyu=[ym_jy,ym_jm,ym_jd]
      ar_10shu=[ym_sn,ym_sw,ym_sc,ym_se,ym_ss]
      tokushu_flag = -1
      tokushu_ar=[]
      if  ar_10shu.include?(3) && ar_10shu.include?(9) && ar_12jyu.include?(2)
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="傷相"
      elsif  (ar_10shu.include?(4) && ar_10shu.include?(9) && ar_12jyu.include?(1)) || (ar_10shu.include?(4) && ar_10shu.include?(8) && ar_12jyu.include?(1))
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="病相"
      elsif  ar_10shu.include?(2) && ar_10shu.include?(9) && ar_12jyu.include?(8)
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="罪相"
      elsif  (ar_10shu.include?(4) && ar_10shu.include?(7))&& (ar_12jyu.include?(2) || ar_12jyu.include?(8))
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="抗相"
      elsif  (ar_10shu.include?(1) && ar_10shu.index(1)!=ar_10shu.rindex(1)) && (ar_12jyu.include?(1))
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="独相"
      elsif  (ar_10shu.include?(5) && ar_10shu.include?(9) && ar_12jyu.include?(7)) || (ar_10shu.include?(5) && ar_10shu.include?(4) && ar_12jyu.include?(7))
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="情相"
      elsif  (ar_10shu.include?(5) && ar_10shu.include?(9) && ar_12jyu.include?(7)) || (ar_10shu.include?(3) && ar_10shu.include?(6) && ar_12jyu.include?(7))
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="色相"
      elsif  ar_10shu.include?(4) && ar_10shu.include?(9) && ar_10shu.include?(2) && ar_12jyu.include?(8)
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="団相"
      elsif  ar_10shu.include?(5) && ar_10shu.include?(6) && ar_12jyu.include?(12)
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="破相"
      elsif  ar_10shu.include?(2) && ar_10shu.include?(6) && ar_12jyu.include?(7)
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="消相"
      elsif  (ar_10shu.include?(4) && ar_10shu.include?(7) && ar_10shu.include?(9)) && ar_12jyu.include?(8)
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="三奇星"
      elsif  (ar_10shu.include?(3) && ar_10shu.include?(9)) || (ar_10shu.include?(4) && ar_10shu.include?(7))
              tokushu_flag += 1
              tokushu_ar[tokushu_flag]="七殺"
      end      
  
      #干支
      nenkan = 3
      nenshi = 9  #2016年基準年 年干＝丙(3) 年支＝申(9)
      nenkan = ((this_year-2016)+3)%10
      if nenkan==0
        nenkan=10
        nenshi = ((this_year-2016)+9)%12
      end  
      if nenshi==0
        nenshi=12
      end
  
      def calc_nenkan(x)
        a=0
  
        a=((x+this_year-2016)+3)%10
        if a==0
          a=10
        end
        return a
      end
  
      def calc_nenshi(y)
        b=0
  
        b=((y+this_year-2016)+9)%12
           if b==0
             b=12
           end
        return b
      end
      
      logger.debug("基本五行=#{moku},#{ka},#{dou},#{gon},#{sui}")

      
      #originalの2408行目までrubyに変換
        
  
  


  end # def create
  
          private
          #28元
          def calc_zokan(sno, dte)
            if dte>20
              dte=20
            end
            x = Zokan.find_by(shi:sno,setsuiri:dte).zokan
            return x
          end
      
          #１０大主星
          def calc_10shu(n, k)
            x = Jushu.find_by(shi:n,setsuiri:k).jushu
            return x
          end
      
          #１２大従星
          def calc_12jyu(n, k)
            x = Junijyu.find_by(shi:n,setsuiri:k).junijyu
            return x
          end
      
          #合法・散法表
          def  calc_gousan(n, k)
            x = Gousan.find_by(shi:n,setsuiri:k).gousan
            return x
          end
      
          #五行変化表
          def  calc_gogyo_cng(n, k)
            x = Gogyocng.find_by(shi:n,setsuiri:k).gogyocng
            return x
          end
      
          #半会変化表
          def  calc_gogyo_hankai(n, k)
            x = Gogyohankai.find_by(shi:n,setsuiri:k).gogyohankai
            return x
          end
      
          #支合変化表
          def  calc_gogyo_shigo(n, k)
            x = Gogyoshigo.find_by(shi:n,setsuiri:k).gogyoshigo
            return x
          end
      
          #剋線 算出表
          def  calc_kokusen(n, k)
            x = Kokusen.find_by(shi:n,setsuiri:k).kokusen
            return x
          end
      
          #相生・相剋 算出表 干支
          def  calc_soukoku(n, k)
            x = Soukoku.find_by(shi:n,setsuiri:k).soukoku
            return x
          end
      
          #四天運と剋線の順位 表
          def  calc_juni(n, k)
            x = Juni.find_by(shi:n,setsuiri:k).juni
            return x
          end
      
          #蔵干表 裏 数理エネルギー計算用
          def  calc_ura_zokan(n,k)
            x = Urazokan.find_by(shi:n,setsuiri:k).urazokan
            return x
          end
      
          #数理エネルギー     1:木 2:火 3:土 4:金 5:水
          def  calc_suri_gogyo(n,k)
            x = Surigogyo.find_by(shi:n,setsuiri:k).surigogyo
            return x
          end
      
          #節入り日
          def calc_setsu(y,m)
            setsu = Setsuiri.find_by(year:y).setsuiri_str
            m=cmod(m, 12)
            x = setsu.slice(m-1,1).to_i
            return x
          end
          
          #守護神
          def  calc_shugoshin(n,k)
            x = Shugoshin.find_by(shi_m:n,kan_d:k).shugoshin
            return x
          end
      
          #--------------------------------------------------------
      
          #切り捨て型・整数化
          def cint(x)
              return (x-0.5).round
          end
      
          #特殊mod
          def cmod(x,y)
              t=x.to_f/y.to_f
              b = (t - 0.5).round
              a= ((t-b) *y).round
              if a==0
                a=y
              end
              return a
          end
      
          #日数計算
          def cdate(y, m, d)
              if m<3
                m=m+12
                y=y-1
              end
              x=cint(y*365.25)+cint(y/400)-cint(y/100)+cint((m-2)*30.59)+d-21
              return x
          end
      
          #月の末日
          def calc_maxdte(y, m)
              if y%400==0 || (y%100>0 && y%4==0)
                  s="312931303130313130313031"
              else
                  s="312831303130313130313031"
              end
              x= s.slice((m-1)*2, 2).to_i
              return x
          end
      
      
          #干支  1912年基準年 年干＝壬(9) 年支＝子(1)
        def calc_nenkan1912(x)      #x=西暦
          a=((x-1912)+9)%10
          if a==0
            a=10
          end
          return a
        end
      
        def calc_nenshi1912(y)   #y=西暦
          b=((y-1912)+1)%12
          if b==0
            b=12
          end
          return b
        end
      
      
          #干の五行
        def calc_gogyo_kan(k)
          if k==1 || k==2
             x=1
          elsif k==3 || k==4
             x=2
          elsif k==5 || k==6
             x=3
          elsif k==7 || k==8
             x=4
          elsif k==9 || k==10
             x=5
          end
          return x
        end
      
        #本日年度 計算 関数
        def nowyear
       
            #本日日付
            this_year = Date.today.year
            this_month = Date.today.month+1
            this_day = Date.today.day
      
            #本日年度
            arr = ["2021", "2025", "2029", "2033", "2037", "2041", "2045", "2049"]
            if arr.include?(this_year)
               first_day = 3
            else
               first_day = 4
            end
      
            if this_month < 2    #1月は前年
               now_year = this_year - 1
            elsif this_month > 2 #3月以降は今年
               now_year = this_year
            else                     #2月 節入日までは前年  節入日以降は今年
               if this_day < first_day
                  now_year = this_year - 1
               else
                  now_year = this_year
               end
            end
            return now_year
        end
  
end #class
