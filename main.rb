# class Person

#     def initialize(first, last, age, type)
#         @first_name = first
#         @last_name = last
#         @age = age
#         @type = type
#     end

#     def birthday
#         @age += 1
#     end

#     def talk
#         if @type == "Student"
#             puts "Aquí es la clase de programación con Ruby?"
#         elsif @type == "Teacher"
#             puts "Bienvenidos a la clase de programación con Ruby!"
#         elsif @type == "Parent"
#             puts "Aquí es la reunión de apoderados?"
#         end
#     end

#     def introduce
#         if @type == "Student"
#             puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
#         elsif @type == "Teacher"
#             puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#         elsif @type == "Parent"
#             puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
#         end
#     end

# end

#Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para eliminar la innecesaria cantidad de sentencias if en los métodos talk e introduce.

# 1. Identificar las posibles subclases que aparecen en el código a refactorizar. Cada una de ella contendrá los métodos correspondientes, talk e introduce.
# Hint: Teacher sería una clase.
# 2. A partir de la refactorización del código se debe generar herencia de ancestros aplicando la sintaxis de Ruby, esto para la subclases.
# 3. El método introduce al imprimir el mensaje muestra el nombre y apellido haciendo uso de interpolación de variables de instancia.
# 4. Al generar las instancias de cada objeto, se muestra un mensaje en función del método que sea invocado.

class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end
        
    def birthday
        @age += 1
    end

    class Student < Person

        def talk
            puts "Aquí es la clase de programación con Ruby?"
        end
            
        def introduce
            puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        end

    end

    class Teacher < Person

        def talk
            puts "Bienvenidos a la clase de programación con Ruby!"
        end
            
        def introduce
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        end

    end

    class Parent < Person

        def talk
            puts "Aquí es la reunión de apoderados?"
        end
            
        def introduce
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
        end

    end

    print '--------------------------------------------'

    personaStudent = Student.new('María', 'Pereira', 32)
    puts personaStudent
    personaStudent.talk
    personaStudent.introduce

    print '--------------------------------------------'

    personaTeacher = Teacher.new('Lucio', 'Martínez', 43)
    puts personaTeacher
    personaTeacher.talk
    personaTeacher.introduce

    print '--------------------------------------------'

    personaParent = Parent.new('Constanza', 'López', 49)
    puts personaParent
    personaParent.talk
    personaParent.introduce

    print '--------------------------------------------'

end

