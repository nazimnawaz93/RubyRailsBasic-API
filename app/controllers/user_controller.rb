class UserController < ApplicationController
    def list
        @users=User.all;
        render json: @users;
        # render json: {
        #     FirstName: @users.FirstName,
        #     LastName:  @users.LastName,
        #     userName:  @users.userName
        # }
    end

    def signup
        @user = User.new;
        @user.FirstName=params[:FirstName];
        @user.LastName=params[:LastName];
        @user.userName=params[:userName];
        @user.Password=params[:Password];

        if @user.save
          render json: {
              message: "Saved Successfully"
          }
        else
            render json: {
                message: "Unsuccessful"
            }
        end
      end

      def login

        @userName=params[:userName];
        @Password=params[:Password];
        @user=User.where(userName:@userName, Password:@Password);
        if !@user.blank?
          render json: {
              IsAuthenticated: true,
              AuthenticatedUser: @user
          }
        else
            render json: {
                IsAuthenticated: false,
                message: "Unsuccessful login attempt"
            }
        end
      end
end
