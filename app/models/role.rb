###############################################################################
#
#   Role Model Class      
#
###############################################################################

class Role < ActiveRecord::Base

  # Definition of Role model scope
  # Rolify module method, where condition (?)
  scopify

###############################################################################
##
##   Declaration of Model Assoications       
##
##   : Join Model to connect User and polymophic :likeable model
##
###############################################################################

  # Direct association without a join model, but join tables should be.
  has_and_belongs_to_many :users, :join_table => :users_roles

  # belogns to Polymorphic :resource 
  belongs_to :resource, :polymorphic => true
  
end
