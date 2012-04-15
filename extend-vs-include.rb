module SomeModule

    def SomeModule.aModuleMethod
        puts "hi, i'm a module method!"
    end

    def self.anotherModuleMethod
        puts "hi, i'm another module method!"
    end
    
    def anInstanceMethod
        puts "hi, i'm an instance method!"
    end

    def sumVariables
        puts (@a + @b)
    end
end

class Foo
    include SomeModule
end
    
SomeModule.aModuleMethod
SomeModule.anotherModuleMethod
#Foo.aModuleMethod
#Foo.new.aModuleMethod
Foo.new.anInstanceMethod
#Foo.new.sumVariables

class Foo2
   include SomeModule 

   def initialize
        @a=1
        @b=3
   end
end

Foo2.new.sumVariables

class Foo3
    
end

# you can use "extend" on classes or objects, 
# "include" only works on classes.  
foo = Foo3.new
foo.extend SomeModule
foo.anInstanceMethod

class Foo4
    extend SomeModule
end

Foo4.anInstanceMethod
