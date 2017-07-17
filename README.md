# README

Taller Preparación Prueba N°2 Rails

Desarrollo:

1. rails new Tienda -d postgresql

2. rails g model Category name:string
   rails g model Product name:string price:integer category:references

3. rake diagram:all

4. product.rb -> validates :price, presence: true

5. rails console -> Product.create(name: "Mouse", price: 100)   (0.1ms)  BEGIN
                    (0.1ms)  ROLLBACK

6. rails g migration addPremiumToProducts premium:boolean  
   product.rb ->   before_save :add_columFalse

                    def add_columFalse
                      if self.premium.nil?
                        self.premium = false
                      end
                    end

7. seeds.rb -> Category.destroy_all