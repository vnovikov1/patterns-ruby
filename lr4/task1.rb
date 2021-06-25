class Phone
    attr_accessor :brand, :model, :release_date, :color, :price, :screen, :memory, :os, :ram, :camera
    def initialize(brand, model, release_date, color, price, screen, memory, os, ram = nil, camera = nil)
        self.brand= brand
        self.model= model
        self.release_date= release_date
        self.color= color
        self.price= price
        self.screen= screen
        self.memory= memory
        self.os= os

        if self.release_date.split('.')[2].to_i < 2005
            self.ram= nil
            self.camera= nil 
        else
            self.ram= ram
            self.camera= camera
        end
    end

    def to_s
        return self.brand + " - " + self.model.to_s + " - " + self.release_date
    end

    def check_release_date
        if self.release_date =~ (/([0-2]\d|3[0-1]).(0[1-9]|1[0-2]).(\d{4})/)
            return true
        end
        return false
    end

    def correct_date
        if !check_release_date
          new_val = self.release_date.split(".")
          if new_val[0].to_i > 31 or new_val[1].to_i > 12 or new_val[2].size > 4
            raise "Uncorrect date"
            else
                if new_val[0].to_i < 10 and new_val[0].size == 1
                    new_val[0].insert(0, '0')
                end

                if new_val[1].to_i < 10 and new_val[1].size == 1
                    new_val[1].insert(0, '0')
                end
            end
          self.release_date= new_val.join(".")
        end
    end
    
end

iphone = Phone.new("apple", "iphone 11", "1.12.2021", "black", 75000, "6 inch", "64 gb", "4 gb", "ios", "12 mp")

nokia = Phone.new("nokia", "3310", "1.12.2000", "black", 5000, "1 inch", "512 mb", "nokia os")
