class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # If not logged in, user's role is "guest" by default
    
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
      can [:front, :contact], Content
    end

    # [:read, :create, :update, :destroy], [Model, Model, Model]
    
    # :admin, :editor, :commenter, :sponsor, :hopeful, :twelve, guest
    
    # can :update, Comment do |comment|  
    #         comment.try(:user) == user
    
  end
end