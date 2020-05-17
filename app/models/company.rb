class Company < ActiveRecord::Base


end


class Firm < Company; end
class Client < Company; end
class PriorityClient < Client; end