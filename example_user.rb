class User
attr_accessor :firstN, :lastN, :email
def initialize(attributes = {})
    @firstN = attributes[:firstN]
    @lastN = attributes[:lastN]
    @email = attributes[:email]
end

def full_name
     "#{@firstN} #{@lastN}"
 end
def formatted_email
    "#{full_name} <#{@email}>"
end

def comma
    "#{@lastN}, #{@firstN}"

end

end
