class Foo
    @instancevar = 10
    @@classvar = 5

    def self.add2ClassInstanceVar 
        @instancevar+=1
        puts "classinstancevar is #{@instancevar}"
    end
    
    def self.add2ClassVar 
        @@classvar+=1
        puts "classvar is #{@@classvar}"
    end

    def initialize
        @instancevar=0
    end    

    def add2InstanceVarNClassVar
        @instancevar+=1
        puts "instancevar is #{@instancevar}"
        @@classvar+=1
        puts "classvar is #{@@classvar}"
    end
end
   
foo = Foo.new

Foo.add2ClassInstanceVar
Foo.add2ClassVar
foo.add2InstanceVarNClassVar

