class TestBattleController < ApplicationController
  def index
    @users=User.paginate(page: params[:page])
    @users.sort!{|y,x| ((x.test1||=0)+(x.test2||=0)+(x.test3||=0)+(x.test4||=0)+(x.test5||=0)+(x.test6||=0)+(x.test7||=0)+(x.test8||=0)+(x.test9||=0))<=>((y.test1||=0)+(y.test2||=0)+(y.test3||=0)+(y.test4||0)+(y.test5||=0)+(y.test6||=0)+(y.test7||=0)+(y.test8||=0)+(y.test9||=0))}
  end
end