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
end

iphone = Phone.new("apple", "iphone 11", "1.12.2021", "black", 75000, "6 inch", "64 gb", "4 gb", "ios", "12 mp")

nokia = Phone.new("nokia", "3310", "1.12.2000", "black", 5000, "1 inch", "512 mb", "nokia os")
