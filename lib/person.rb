# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name,bank_account=25, happiness=8, hygiene=8)
      @name = name  
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end

   def happiness=value
      if @happiness>10
          @happiness=10
      elsif @happiness<0
          @happiness=0
      else
          @happiness=value
      end
    end

    def happiness
        @happiness
    end

    def hygiene=value
        if @hygiene>10
            @hygiene=10
        elsif @hygiene<0
            @hygiene=0
        else
            @hygiene=value
        end
    end

    def hygiene
        @hygiene
    end

    def clean?
         if @hygiene > 7
             true
         else
             false
         end 
      end

    def happy?
        if @happiness > 7
            true
        else
            false
        end 
    end

    def get_paid amount
        @bank_account=+amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene=+4
    end
end